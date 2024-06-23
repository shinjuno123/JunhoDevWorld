export default class Post {
    constructor() {
        this.blogPageOuter = document.querySelector(".main > .blog-page__outer");
        this.postLinks = document.querySelectorAll('.main > .blog-page__outer .post > .post__link');
        this.backToPostListBtn = document.querySelector('.btn__back-to-post-list');
        this.event();
    }

    // Events...
    event() {
        this.postLinks.forEach((postLink)=> {
            postLink.addEventListener("click",() => {
                this.openPost();
            })
        })

        this.backToPostListBtn.addEventListener('click', () => {
            this.backToPostList();
        })
    }

    // Other methods...
    openPost() {
        this.blogPageOuter.classList.add("post__open");
        document.body.scrollTop = document.documentElement.scrollTop = 0;

        // Fetch post details from server
    }

    backToPostList() {
        this.blogPageOuter.classList.remove('post__open');
        document.body.scrollTop = document.documentElement.scrollTop = 0;
        
        // Fetch a post list from server
    }
}
