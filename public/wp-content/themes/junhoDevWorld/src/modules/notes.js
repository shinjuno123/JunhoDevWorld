export default class Note {
    constructor() {
        console.log('note is loaded!');
        this.comments = document.querySelectorAll('.note__footer .right');
        this.isCommentHidden = true;
        this.event();
    }

    event() {
        this.comments.forEach((comment) => {
            comment.addEventListener('click', ()=> {
                if(this.isCommentHidden) {
                    this.displayComment();
                } else {

                    this.hideComment();
                }

                this.isCommentHidden = !this.isCommentHidden;
            });

        })
    }


    displayComment() {

    }

    hideComment() {

    }

}