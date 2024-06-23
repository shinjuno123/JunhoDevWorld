import {Application, Graphics} from'pixi.js';

export default class About {
    constructor() {
        this.app = new Application();
        this.section = document.querySelector('.project__section');
        this.width = 1000;
        this.height = 600;
        this.setup();
    }

    // event, or setup
    async setup() {
        // Create te application helper and add its render target to the page
        await this.app.init({width: this.width, height: this.height});
        this.section.appendChild(this.app.canvas);
        await this.createBackground();
    }

    // methods...


    async createBackground() {
        this.bulbShape = await this.createKeyHole();
        this.groundLine = await this.createGroundLine();

        this.app.stage.addChild(this.bulbShape);
        this.app.stage.addChild(this.groundLine);
    }


    // objects
    async createGroundLine() {
        const groundLine = new Graphics();

        groundLine.moveTo(0, 0);
        groundLine.lineTo(this.width, 0);
        groundLine.stroke({width:1.5, color: 0xffffff});

        groundLine.position.x = 0;
        groundLine.position.y = this.height * 0.875;

        return groundLine;
    }

    async createKeyHole() {
        const keyHole = new Graphics();

        keyHole.moveTo(0, 0);
        keyHole.lineTo(50, -150);
        keyHole.moveTo(200, 0);
        keyHole.lineTo(150,-150);
        
        keyHole.moveTo(50, -150);
        keyHole.arc(100, -200, 80, Math.PI , 2 * Math.PI);
        keyHole.stroke({ width: 3, color: 0xaa00bb });
    

    
        keyHole.position.x = this.width / 2 - 100;
        keyHole.position.y = this.height * 0.875;

        return keyHole;
    }


}