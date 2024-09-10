export default class Note {
    constructor() {
        console.log('note is loaded!');
        this.commentIcons = document.querySelectorAll('.note__footer .right');
        this.commentSections = document.querySelectorAll('.comment__section');
        this.isCommentHidden = true;
        this.event();
    }

    event() {
        this.commentIcons.forEach((commentIcon, index) => {
            commentIcon.addEventListener('click', ()=> {
                const commentSection = this.commentSections[index];
                this.toggleComment(commentSection);
            });

        })
    }


    toggleComment(commentSection) {
        commentSection.classList.toggle('open');
    }


}