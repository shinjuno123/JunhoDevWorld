import AboutLoading from "./about.loading";

export default class About {
    constructor() {
        this.Loading = new AboutLoading();
        this.aboutSection = document.querySelector('.project__section');
        this.screenToggleBtn = document.querySelector('.project__section-fullscreen-btn');
        this.nextButtons = document.querySelectorAll('.next-button');
        this.prevButtons = document.querySelectorAll('.prev-button');
        this.localPages = document.querySelectorAll('.local-page');
        this.currentPageNumber = this.findCurrentPage();
        this.event();
        this.screenToggleBtn.dispatchEvent(new Event('click'));
    }

    event() {
        this.screenToggleBtn.addEventListener('click',()=>this.toggleScreenSize());
        this.nextButtons.forEach(nextBtn=>{
            nextBtn.addEventListener('click',()=> this.nextPage());
        })
        this.prevButtons.forEach(prevBtn => {
            prevBtn.addEventListener('click',()=> this.prevPage());
        })
        
    }

    findCurrentPage() {
        let currentPageNumber = 0;

        this.localPages.forEach((localPage, idx)=> {
            if (localPage.classList.contains('current-page')) {
                currentPageNumber = idx;
            }
        })

        return currentPageNumber;
    }

    async playLoading() {
        this.toggleLoadingCover();
        await this.Loading.play();
        setTimeout(()=>this.toggleLoadingCover(), 1400);
    }

    toggleScreenSize(){
        const maxScreen = document.querySelector('.project__section');
        maxScreen.classList.toggle('screen-max');
    }

    toggleLoadingCover(){
        const loadingCover = document.querySelector('.loading-cover');
        loadingCover.classList.toggle('visible');
    }

    scrollToTop() {
        this.aboutSection.scroll({top:0, behavior:'smooth'});
        window.scroll({top:0, behavior: 'smooth'});
    }

    nextPage() {
        const totalPage = this.localPages.length;
        const prevPage = this.currentPageNumber;
        this.currentPageNumber = (this.currentPageNumber + 1) % totalPage;
        this.scrollToTop();
        this.playLoading();

        this.localPages[prevPage].classList.remove('current-page');
        this.localPages[this.currentPageNumber].classList.add('current-page');
    }

    prevPage(){
        const totalPage = this.localPages.length;
        const prevPage = this.currentPageNumber;
        this.currentPageNumber = (totalPage + (this.currentPageNumber - 1)) % totalPage;
        this.scrollToTop();
        this.playLoading();

        this.localPages[prevPage].classList.remove('current-page');
        this.localPages[this.currentPageNumber].classList.add('current-page');
    }
    
}