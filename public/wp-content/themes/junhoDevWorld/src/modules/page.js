class Page {
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

        // Fetch post details from server
    }

    backToPostList() {
        this.blogPageOuter.classList.remove('post__open');

        // Fetch a post list from server
    }
}

export default Page;