import { Loader,Application, Assets, Texture, buildGeometryFromPath, Graphics, GraphicsPath, Mesh, Sprite, FillGradient } from 'pixi.js';


export default class AboutLoading {
    constructor() {
        this.app = new Application();
        this.section = document.querySelector('.project__section');
        this.width = 1000;
        this.height = 600;
        this.isInitialized = false;
        this.animCount = 0;
    }

    // event, or setup
    async setup() {
        // Create te application helper and add its render target to the page
        if (!this.isInitialized) {
            await this.app.init({ backgroundColor: 0x3F2305, width: this.width, height: this.height });
            this.section.appendChild(this.app.canvas);
            await this.createBackground();
            await this.createQuestionMarks();
        } else {
            await this.createQuestionMarks();
            this.keyholes = await this.setDynamicBackgroundColor();
        }
    }

    async play() {
        await this.setup();
        this.previousAvg = 0;

        this.keyholes.forEach((keyhole) => {
            keyhole.scale.set(.5);
        });

        this.animCount = 0;
        if (!this.isInitialized) {
            this.app.ticker.add(this.playAnim.bind(this));
            this.isInitialized = true;
        } else {
            this.app.ticker.start();
        }
    }

    stop() {
        this.app.ticker.stop();      
    }

    // methods...

    async playAnim() {
        if(this.animCount >= 90) {
            this.app.ticker.stop();
            this.app.stage.removeChildren(0, this.app.stage.children.length - 1);
        }


        const a = 20;
        const x0 = 1;
        const v0 = 0;
        const t = (this.animCount % 100 / 100);
        // Positive time graph for smooth acceleration
        const scalePercentage = x0 + (v0 * t) + (0.5 * a * t ** 2);
        const scale = scalePercentage % 10;

        this.keyholes.forEach((keyhole) => {
            keyhole.scale.set(scale);
        });
        let lastKeyholeWidth = this.keyholes[this.keyholes.length - 1].width;

        this.leftAndRightShades.forEach((shades, index) => {
            if (index === 0) {
                // Left shades
                shades.forEach((shade) => {
                    shade.x = 0 - (lastKeyholeWidth / 2 - 100);
                })
            } else {
                // Right shades
                shades.forEach((shade) => {
                    shade.x = this.width / 2 + (lastKeyholeWidth / 2);
                })
            }
        })



        this.groundMeshes.forEach((mesh) => {
            mesh.y = mesh.y + (t * 5);
        });

        this.groundMeshes.push(...(await this.createGround()))

        this.groundMeshes = this.groundMeshes.filter((mesh) => {
            if (mesh.x < 0 || mesh.y < 0 || mesh.x > this.width || mesh.y > this.height ) {
                mesh = null
            }

            return mesh;
        });

        this.animCount++;
    }

    async createQuestionMarks() {
        for (let i = 0; i < 30; i += 4) {

            for (let j = 0; j < 30; j += 4) {
                const questionMark = new Graphics().svg(`
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M80 160c0-35.3 28.7-64 64-64h32c35.3 0 64 28.7 64 64v3.6c0 21.8-11.1 42.1-29.4 53.8l-42.2 27.1c-25.2 16.2-40.4 44.1-40.4 74V320c0 17.7 14.3 32 32 32s32-14.3 32-32v-1.4c0-8.2 4.2-15.8 11-20.2l42.2-27.1c36.6-23.6 58.8-64.1 58.8-107.7V160c0-70.7-57.3-128-128-128H144C73.3 32 16 89.3 16 160c0 17.7 14.3 32 32 32s32-14.3 32-32zm80 320a40 40 0 1 0 0-80 40 40 0 1 0 0 80z"/></svg>
                `);
                questionMark.scale.set(.1)
                questionMark.pivot.set(10, 10);
                questionMark.y = i * 25;
                questionMark.x = (i % 8 == 0) ? (j * 40) + 50 : (j * 40) + 0;
                questionMark.angle = -90 + (crypto.getRandomValues(new Uint8Array(1))[0] / 255 * 180);
                questionMark.fill(0xffffff);
                questionMark.zIndex = 2;
                questionMark.alpha = 0.3;
                this.app.stage.addChild(questionMark);
            }

        }

    }


    async createBackground() {
        this.keyholes = await this.setDynamicBackgroundColor();
        this.groundMeshes = await this.createGround();
        this.leftAndRightShades = []

        const multipleShadeArgumentsList = [{
            startX: 0,
            startY: 0,
            width: this.width / 2 - 100,
            height: 5,
            x: 0
        }, {
            startX: 0,
            startY: 0,
            width: this.width / 2 - 100,
            height: 5,
            x: this.width / 2 + 100
        }]

        for (let multipleShadeArguments of multipleShadeArgumentsList) {
            const { startX, startY, width, height, x } = multipleShadeArguments
            const shades = await this.createShadeOnGround(startX, startY, width, height, x);
            this.leftAndRightShades.push(shades);
        }

    }

    async setDynamicBackgroundColor(lastKeyholeWidth = 200, lastKeyholeHeight = 200, lastKeyholeRad = 100) {
        const iteration = 500;
        const keyholes = [];

        for (let i = iteration; i >= 1; i -= 4) {
            const colorPercent = (iteration - i) / 400 * 200 - 100;
            const keyhole = await this.createKeyHole(0, 0, 200 + i, 200 + i, 100 + i, this.shadeColor("#3F2305", colorPercent));
            keyhole.zIndex = 1;
            keyholes.push(keyhole);
        }

        const lastKeyhole = await this.createKeyHole(0, 0, lastKeyholeWidth, lastKeyholeHeight, lastKeyholeRad);
        lastKeyhole.zIndex = 1;
        keyholes.push(lastKeyhole);

        return keyholes;
    }


    // objects
    async createGround() {
        const width = 10;
        const height = 20;

        const leftTilePath = new GraphicsPath()
            .moveTo(0, 0)
            .lineTo(width, 0)
            .lineTo(width * 1.1, -height)
            .lineTo(width * 0.1, -height)

        const leftTileGeometry = buildGeometryFromPath({
            path: leftTilePath,
        });

        const rightTilePath = new GraphicsPath()
            .moveTo(0, 0)
            .lineTo(-width, 0)
            .lineTo(-width * 1.1, -height)
            .lineTo(-width * 0.1, -height)

        const rightTileGeometry = buildGeometryFromPath({
            path: rightTilePath,
        });

        const meshes = [];
        this.meshColors = [0x222831, 0x31363F];
        const roughTileGridRow = 4;
        const roughTileGridCol = 10;
        const tileMove = 7;

        for (let group = 0; group < 12; group++) {

            for (let col = 0; col < roughTileGridCol; col++) {

                for (let row = 0; row < roughTileGridRow; row++) {
                    const x = col * width + (row % 2 == 0 ? tileMove : -tileMove) + (group * width * roughTileGridCol) - 90;
                    const y = this.height * 0.875 + height + (row * height);


                    const mesh = new Mesh({
                        geometry: group > 5 ? rightTileGeometry : leftTileGeometry,
                        texture: Texture.WHITE,
                        x,
                        y,
                        tint: this.meshColors[Math.floor(Math.random() * this.meshColors.length)],
                    });

                    this.app.stage.addChild(mesh);
                    mesh.zIndex = 3;

                    meshes.push(mesh);
                }
            }
        }

        return meshes;
    }

    async createShadeOnGround(startX = 0, startY = 0, width, height, x) {
        const shades = []

        for (let i = 1; i <= 200; i++) {
            const h = 5;
            const shade = new Graphics().moveTo(startX, startY)
                .rect(startX, startY, width, height)
                .fill(0x000000);

            shade.alpha = 1 - i / 10;
            shade.pivot.set(0, height / 2);
            shade.x = x;
            shade.y = this.height * 0.87 + (5 * i);
            shade.zIndex = 2;
            shades.push(shade);

            this.app.stage.addChild(shade);
        }

        return shades;
    }


    async createKeyHole(startX = 0, startY = 0, width = 200, height = 200, keyHoleRadius = 100, color = 0xffffff) {
        const keyHole = new Graphics();

        keyHole.moveTo(startX, startY);
        keyHole.lineTo(startX + 50, startY - height);
        keyHole.moveTo(startX, startY);
        keyHole.lineTo(startX + width, startY);
        keyHole.lineTo(startX + (width - 50), startY - height);
        keyHole.lineTo(startX + 50, startY - height)

        keyHole.moveTo(startX + width, startY - height);

        keyHole.circle(((startX + 50) + (startX + width - 50)) / 2, startY - 260, keyHoleRadius, Math.PI, 2 * Math.PI);
        keyHole.stroke({ width: 3, color: color });

        keyHole.fill({ color: color });

        keyHole.pivot.set(width / 2, startY)
        keyHole.position.x = this.width / 2;
        keyHole.position.y = this.height * 0.875;

        this.app.stage.addChild(keyHole);

        return keyHole;
    }

    shadeColor(color, percent) {

        var R = parseInt(color.substring(1, 3), 16);
        var G = parseInt(color.substring(3, 5), 16);
        var B = parseInt(color.substring(5, 7), 16);

        R = parseInt(R * (100 + percent) / 100);
        G = parseInt(G * (100 + percent) / 100);
        B = parseInt(B * (100 + percent) / 100);

        R = (R < 255) ? R : 255;
        G = (G < 255) ? G : 255;
        B = (B < 255) ? B : 255;

        R = Math.round(R)
        G = Math.round(G)
        B = Math.round(B)

        var RR = ((R.toString(16).length == 1) ? "0" + R.toString(16) : R.toString(16));
        var GG = ((G.toString(16).length == 1) ? "0" + G.toString(16) : G.toString(16));
        var BB = ((B.toString(16).length == 1) ? "0" + B.toString(16) : B.toString(16));

        return "#" + RR + GG + BB;
    }


}