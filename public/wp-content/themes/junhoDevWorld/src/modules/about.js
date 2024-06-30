import AboutLoading from "./about.loading";

export default class About {
    constructor() {
        this.Loading = new AboutLoading();
        
        this.playLoading();

        setInterval(async()=>{await this.playLoading(); console.log("done")},10000);
    }

    async playLoading() {
        await this.Loading.play();
    }

}