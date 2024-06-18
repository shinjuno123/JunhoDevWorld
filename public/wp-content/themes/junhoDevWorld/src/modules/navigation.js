export default class Navigation {
    constructor() {
        this.iconBtn = document.querySelector(".iconbtn");
        this.nav = document.querySelector(".nav");
        this.body = document.querySelector("body");
        this.menuOpen = false;
        this.event();
    }

    // events...
    event() {
        this.iconBtn.addEventListener('click', () =>  this.navOpen());
    }


    // any methods...
    navOpen() {
        if (!this.menuOpen) {
            this.body.scrollIntoView();
            this.nav.classList.add('nav--open');
            this.body.classList.add("scroll__disable");
        } else {
            this.body.scrollIntoView();
            this.nav.classList.remove('nav--open');
            this.body.classList.remove("scroll__disable");
        }

        this.menuOpen = !this.menuOpen;
    } 

}
