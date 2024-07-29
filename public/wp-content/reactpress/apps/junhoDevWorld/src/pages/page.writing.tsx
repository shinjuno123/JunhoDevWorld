import { Link } from "react-router-dom";

export default function Writing() {
  return (
    <>
      <main className="main container">
        <div className="blog-page__outer">
          <div className="blog-page">
            <div className="blog-page__header">
              <span>Writing</span>
            </div>

            <div className="blog-page__main">
              <ul className="post__list">
                <li className="post">
                  <Link to="/posts/1" className="post__link">
                    <span>Welcome to this website 1</span>
                  </Link>
                  <p className="post__date-category">01 Jun 2024 - CODE</p>
                  <p className="post__excerpt">
                    I took some time this week to upgrade my site to the newest
                    version of Eleventy. Here's what I learned.
                  </p>
                </li>

                <li className="post">
                  <Link to="/posts/1" className="post__link">
                    <span>Welcome to this website 1</span>
                  </Link>
                  <p className="post__date-category">01 Jun 2024 - CODE</p>
                  <p className="post__excerpt">
                    I took some time this week to upgrade my site to the newest
                    version of Eleventy. Here's what I learned.
                  </p>
                </li>

                <li className="post">
                  <Link to="/posts/1" className="post__link">
                    <span>Welcome to this website 1</span>
                  </Link>
                  <p className="post__date-category">01 Jun 2024 - CODE</p>
                  <p className="post__excerpt">
                    I took some time this week to upgrade my site to the newest
                    version of Eleventy. Here's what I learned.
                  </p>
                </li>

                <li className="post">
                  <Link to="/posts/1" className="post__link">
                    <span>Welcome to this website 1</span>
                  </Link>
                  <p className="post__date-category">01 Jun 2024 - CODE</p>
                  <p className="post__excerpt">
                    I took some time this week to upgrade my site to the newest
                    version of Eleventy. Here's what I learned.
                  </p>
                </li>

                <li className="post">
                  <Link to="/posts/1" className="post__link">
                    <span>Welcome to this website 1</span>
                  </Link>
                  <p className="post__date-category">01 Jun 2024 - CODE</p>
                  <p className="post__excerpt">
                    I took some time this week to upgrade my site to the newest
                    version of Eleventy. Here's what I learned.
                  </p>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </main>
    </>
  );
}
