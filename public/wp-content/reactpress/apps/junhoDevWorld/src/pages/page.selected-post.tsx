import { useParams } from "react-router-dom";
import { Link } from "react-router-dom";

export default function SelectedPost() {
  const postId = Number(useParams()["postId"]);

  return (
    <>
      <main className="main container">
        <section className="blog-page__outer">
          <div className="selected-post">
            <div className="selected-post__inner">
              <div className="btn__back-to-post-list__outer">
                <Link className="btn__back-to-post-list" to={"/posts"}>
                  Back to list <i className="fa-solid fa-arrow-right icon"></i>
                </Link>
              </div>
              <h2 className="selected-post__title">Welcome to this website</h2>
              <div className="selected-post__info">
                <span className="selected-post__uploaded">01 JUN 2024</span> -
                <span>
                  <a className="selected-post__category" href="/">
                    CODE
                  </a>
                </span>
              </div>
              <hr />

              <div className="selected-post__content">
                I took some time this week to upgrade my site to the newest
                version of Eleventy. Here's what I learned.
              </div>
            </div>
          </div>
        </section>
      </main>
    </>
  );
}
