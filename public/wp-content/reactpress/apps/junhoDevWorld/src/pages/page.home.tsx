import "material-icons/iconfont/material-icons.scss";
import { Link} from "react-router-dom";

export default function Home() {
    // eslint-disable-next-line @typescript-eslint/no-unused-vars


    return (
        <>
            <main className="main container">
                <div className="intro">
                    <div className="intro__inner">
                        <h1 className="intro__title">I do Software Development</h1>
                        <p className="intro__pretitle">
                            <Link to="/about">
                                Hello, my name is Junho&nbsp;
                            </Link>
                        </p>
                        <div className="intro__content">
                            <p>I’m a Software Engineer, Quality Assuarance, Quality Control and Full stack development, specialized in Web. I
                                also write about the web on my blog and elsewhere.</p>
                        </div>
                    </div>

                </div>


                <div className="featured-posts__outer">
                    <h2>Featured Posts</h2>
                    <div className="featured-posts">
                        <ul className="featured-posts__list">

                            <li className="featured-posts__item">
                                <div className="featured-post">
                                    <picture>
                                        <source
                                            srcSet="https://t4.ftcdn.net/jpg/02/25/08/49/360_F_225084966_hhswkk9GgkAKcr2p1n69aaiI1jETbZO9.jpg 500w"
                                            type="img/avif"/>
                                        <img className="featured-post__image"
                                            src="https://t4.ftcdn.net/jpg/02/25/08/49/360_F_225084966_hhswkk9GgkAKcr2p1n69aaiI1jETbZO9.jpg"
                                            alt="" loading="eager" decoding="auto" width="500" height="500"/>
                                    </picture>
                                    <div className="featured-post__inner">
                                        <a className="featured-post__link" href="/">
                                            <span className="featured-post__title">Welcome to Web dev</span>
                                        </a>
                                        <p className="featured-post__description">
                                            A lot of new CSS features have shipped in the last years, but actual usage is still low.
                                            One of the biggest barriers: we need to re-wire our own brains.
                                        </p>
                                        <span className="featured-post__likecount" aria-label="47 Likes">
                                            <i className="fa-regular fa-heart"></i>
                                            &nbsp;&nbsp;<span>47</span>
                                        </span>
                                    </div>
                                </div>
                            </li>

                            <li className="featured-posts__item">
                                <div className="featured-post">
                                    <picture>
                                        <source
                                            srcSet="https://t4.ftcdn.net/jpg/02/25/08/49/360_F_225084966_hhswkk9GgkAKcr2p1n69aaiI1jETbZO9.jpg 500w"
                                            type="img/avif"/>
                                        <img className="featured-post__image"
                                            src="https://t4.ftcdn.net/jpg/02/25/08/49/360_F_225084966_hhswkk9GgkAKcr2p1n69aaiI1jETbZO9.jpg"
                                            alt="" loading="eager" decoding="auto" width="500" height="500"/>
                                    </picture>
                                    <div className="featured-post__inner">
                                        <a className="featured-post__link" href="/">
                                            <span className="featured-post__title">Welcome to Web dev</span>
                                        </a>
                                        <p className="featured-post__description">
                                            A lot of new CSS features have shipped in the last years, but actual usage is still low.
                                            One of the biggest barriers: we need to re-wire our own brains.
                                        </p>
                                        <span className="featured-post__likecount" aria-label="47 Likes">
                                            <i className="fa-regular fa-heart"></i>
                                            &nbsp;&nbsp;<span>47</span>
                                        </span>
                                    </div>
                                </div>
                            </li>

                            <li className="featured-posts__item">
                                <div className="featured-post">
                                    <picture>
                                        <source
                                            srcSet="https://t4.ftcdn.net/jpg/02/25/08/49/360_F_225084966_hhswkk9GgkAKcr2p1n69aaiI1jETbZO9.jpg 500w"
                                            type="img/avif"/>
                                        <img className="featured-post__image"
                                            src="https://t4.ftcdn.net/jpg/02/25/08/49/360_F_225084966_hhswkk9GgkAKcr2p1n69aaiI1jETbZO9.jpg"
                                            alt="" loading="eager" decoding="auto" width="500" height="500"/>
                                    </picture>
                                    <div className="featured-post__inner">
                                        <a className="featured-post__link" href="/">
                                            <span className="featured-post__title">Welcome to Web dev</span>
                                        </a>
                                        <p className="featured-post__description">
                                            A lot of new CSS features have shipped in the last years, but actual usage is still low.
                                            One of the biggest barriers: we need to re-wire our own brains.
                                        </p>
                                        <span className="featured-post__likecount" aria-label="47 Likes">
                                            <i className="fa-regular fa-heart"></i>
                                            &nbsp;&nbsp;<span>47</span>
                                        </span>
                                    </div>
                                </div>
                            </li>

                            <li className="featured-posts__item">
                                <div className="featured-post">
                                    <picture>
                                        <source
                                            srcSet="https://t4.ftcdn.net/jpg/02/25/08/49/360_F_225084966_hhswkk9GgkAKcr2p1n69aaiI1jETbZO9.jpg 500w"
                                            type="img/avif"/>
                                        <img className="featured-post__image"
                                            src="https://t4.ftcdn.net/jpg/02/25/08/49/360_F_225084966_hhswkk9GgkAKcr2p1n69aaiI1jETbZO9.jpg"
                                            alt="" loading="eager" decoding="auto" width="500" height="500"/>
                                    </picture>
                                    <div className="featured-post__inner">
                                        <a className="featured-post__link" href="/">
                                            <span className="featured-post__title">Welcome to Web dev</span>
                                        </a>
                                        <p className="featured-post__description">
                                            A lot of new CSS features have shipped in the last years, but actual usage is still low.
                                            One of the biggest barriers: we need to re-wire our own brains.
                                        </p>
                                        <span className="featured-post__likecount" aria-label="47 Likes">
                                            <i className="fa-regular fa-heart"></i>
                                            &nbsp;&nbsp;<span>47</span>
                                        </span>
                                    </div>
                                </div>
                            </li>

                            <li className="featured-posts__item">
                                <div className="featured-post">
                                    <picture>
                                        <source
                                            srcSet="https://t4.ftcdn.net/jpg/02/25/08/49/360_F_225084966_hhswkk9GgkAKcr2p1n69aaiI1jETbZO9.jpg 500w"
                                            type="img/avif"/>
                                        <img className="featured-post__image"
                                            src="https://t4.ftcdn.net/jpg/02/25/08/49/360_F_225084966_hhswkk9GgkAKcr2p1n69aaiI1jETbZO9.jpg"
                                            alt="" loading="eager" decoding="auto" width="500" height="500"/>
                                    </picture>
                                    <div className="featured-post__inner">
                                        <a className="featured-post__link" href="/">
                                            <span className="featured-post__title">Welcome to Web dev</span>
                                        </a>
                                        <p className="featured-post__description">
                                            A lot of new CSS features have shipped in the last years, but actual usage is still low.
                                            One of the biggest barriers: we need to re-wire our own brains.
                                        </p>
                                        <span className="featured-post__likecount" aria-label="47 Likes">
                                            <i className="fa-regular fa-heart"></i>
                                            &nbsp;&nbsp;<span>47</span>
                                        </span>
                                    </div>
                                </div>
                            </li>

                            <li className="featured-posts__item">
                                <div className="featured-post">
                                    <picture>
                                        <source
                                            srcSet="https://t4.ftcdn.net/jpg/02/25/08/49/360_F_225084966_hhswkk9GgkAKcr2p1n69aaiI1jETbZO9.jpg 500w"
                                            type="img/avif"/>
                                        <img className="featured-post__image"
                                            src="https://t4.ftcdn.net/jpg/02/25/08/49/360_F_225084966_hhswkk9GgkAKcr2p1n69aaiI1jETbZO9.jpg"
                                            alt="" loading="eager" decoding="auto" width="500" height="500"/>
                                    </picture>
                                    <div className="featured-post__inner">
                                        <a className="featured-post__link" href="/">
                                            <span className="featured-post__title">Welcome to Web dev</span>
                                        </a>
                                        <p className="featured-post__description">
                                            A lot of new CSS features have shipped in the last years, but actual usage is still low.
                                            One of the biggest barriers: we need to re-wire our own brains.
                                        </p>
                                        <span className="featured-post__likecount" aria-label="47 Likes">
                                            <i className="fa-regular fa-heart"></i>
                                            &nbsp;&nbsp;<span>47</span>
                                        </span>
                                    </div>
                                </div>
                            </li>

                                                        <li className="featured-posts__item">
                                <div className="featured-post">
                                    <picture>
                                        <source
                                            srcSet="https://t4.ftcdn.net/jpg/02/25/08/49/360_F_225084966_hhswkk9GgkAKcr2p1n69aaiI1jETbZO9.jpg 500w"
                                            type="img/avif"/>
                                        <img className="featured-post__image"
                                            src="https://t4.ftcdn.net/jpg/02/25/08/49/360_F_225084966_hhswkk9GgkAKcr2p1n69aaiI1jETbZO9.jpg"
                                            alt="" loading="eager" decoding="auto" width="500" height="500"/>
                                    </picture>
                                    <div className="featured-post__inner">
                                        <a className="featured-post__link" href="/">
                                            <span className="featured-post__title">Welcome to Web dev</span>
                                        </a>
                                        <p className="featured-post__description">
                                            A lot of new CSS features have shipped in the last years, but actual usage is still low.
                                            One of the biggest barriers: we need to re-wire our own brains.
                                        </p>
                                        <span className="featured-post__likecount" aria-label="47 Likes">
                                            <i className="fa-regular fa-heart"></i>
                                            &nbsp;&nbsp;<span>47</span>
                                        </span>
                                    </div>
                                </div>
                            </li>


                        </ul>
                        <p className="featured-posts__footer">

                            <Link to="/posts" className="featured-posts__see-all">
                                See All Posts&nbsp;
                                <i className="material-icons icon">arrow_forward</i>
                            </Link>


                        </p>
                    </div>
                </div>
            </main>
        </>
    )
}