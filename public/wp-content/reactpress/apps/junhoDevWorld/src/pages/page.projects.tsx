import projectImage from "../assets/images/example-project.png";
import Glide from '@glidejs/glide';
import { useEffect, useRef } from "react";
import "material-icons/iconfont/material-icons.scss";

export default function Projects() {
  const glideRef = useRef(null);

  const glide = new Glide('.glide', {
    type: 'carousel',
    startAt: 0,
    perView: 1,
  });
  
  useEffect(() => {
    if(glideRef.current) {
      glide.mount();
    }
  })


  return (
    <>
      <section className="project__page">
        <section className="hero_projects local-page">
          <h1>Amazing Projects!</h1>

          <div className="glide" ref={glideRef}>
            <div className="glide__track" data-glide-el="track">
              <ul className="glide__slides">
                <li className="glide__slide">
                  <div className="slide__wrapper">
                    <div className="slide__background">
                      <img
                        src={projectImage}
                        alt=""
                      />
                    </div>

                    <div className="slide__description">
                      <h3>Portfolio Website V1</h3>
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                        sed do eiusmod tempor incididunt ut labore et dolore
                        magna aliqua. Ut enim ad minim veniam, quis nostrud
                        exercitation ullamco laboris nisi ut aliquip ex ea
                        commodo consequat. Duis aute irure dolor in
                        reprehenderit in voluptate velit esse cillum dolore eu
                        fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                        non proident, sunt in culpa qui officia deserunt mollit
                        anim id est laborum.
                      </p>
                      <h4>Skills</h4>
                      <ol>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                      </ol>
                      <h4>URL</h4>
                      <a href="https://github.com/shinjuno123/portfolio-management-client">
                        https://github.com/shinjuno123/portfWolio-management-client
                      </a>
                    </div>
                  </div>
                </li>

                <li className="glide__slide">
                  <div className="slide__wrapper">
                    <div className="slide__background">
                      <img
                        src={projectImage}
                        alt=""
                      />
                    </div>

                    <div className="slide__description">
                      <h3>Portfolio Website V1</h3>
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                        sed do eiusmod tempor incididunt ut labore et dolore
                        magna aliqua. Ut enim ad minim veniam, quis nostrud
                        exercitation ullamco laboris nisi ut aliquip ex ea
                        commodo consequat. Duis aute irure dolor in
                        reprehenderit in voluptate velit esse cillum dolore eu
                        fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                        non proident, sunt in culpa qui officia deserunt mollit
                        anim id est laborum.
                      </p>
                      <h4>Skills</h4>
                      <ol>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                      </ol>
                      <h4>URL</h4>
                      <a href="https://github.com/shinjuno123/portfolio-management-client">
                        https://github.com/shinjuno123/portfWolio-management-client
                      </a>
                    </div>
                  </div>
                </li>

                <li className="glide__slide">
                  <div className="slide__wrapper">
                    <div className="slide__background">
                      <img
                        src={projectImage}
                        alt=""
                      />
                    </div>

                    <div className="slide__description">
                      <h3>Portfolio Website V1</h3>
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                        sed do eiusmod tempor incididunt ut labore et dolore
                        magna aliqua. Ut enim ad minim veniam, quis nostrud
                        exercitation ullamco laboris nisi ut aliquip ex ea
                        commodo consequat. Duis aute irure dolor in
                        reprehenderit in voluptate velit esse cillum dolore eu
                        fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                        non proident, sunt in culpa qui officia deserunt mollit
                        anim id est laborum.
                      </p>
                      <h4>Skills</h4>
                      <ol>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                      </ol>
                      <h4>URL</h4>
                      <a href="https://github.com/shinjuno123/portfolio-management-client">
                        https://github.com/shinjuno123/portfWolio-management-client
                      </a>
                    </div>
                  </div>
                </li>

                <li className="glide__slide">
                  <div className="slide__wrapper">
                    <div className="slide__background">
                      <img
                        src={projectImage}
                        alt=""
                      />
                    </div>

                    <div className="slide__description">
                      <h3>Portfolio Website V1</h3>
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                        sed do eiusmod tempor incididunt ut labore et dolore
                        magna aliqua. Ut enim ad minim veniam, quis nostrud
                        exercitation ullamco laboris nisi ut aliquip ex ea
                        commodo consequat. Duis aute irure dolor in
                        reprehenderit in voluptate velit esse cillum dolore eu
                        fugiat nulla pariatur. Excepteur sint occaecat cupidatat
                        non proident, sunt in culpa qui officia deserunt mollit
                        anim id est laborum.
                      </p>
                      <h4>Skills</h4>
                      <ol>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                        <li>
                          <span className="material-symbols-outlined">
                            html
                          </span>
                        </li>
                      </ol>
                      <h4>URL</h4>
                      <a href="https://github.com/shinjuno123/portfolio-management-client">
                        https://github.com/shinjuno123/portfWolio-management-client
                      </a>
                    </div>
                  </div>
                </li>
              </ul>
            </div>
            <div className="glide__arrows" data-glide-el="controls">
              <button
                className="glide__arrow glide__arrow--left"
                data-glide-dir="<"
              >
                <span className="material-icons">
                  arrow_back_ios
                </span>
              </button>
              <button
                className="glide__arrow glide__arrow--right"
                data-glide-dir=">"
              >
                <span className="material-icons">
                  arrow_forward_ios
                </span>
              </button>
            </div>

            <div className="glide__bullets" data-glide-el="controls[nav]">
              <button className="glide__bullet" data-glide-dir="=0"></button>
              <button className="glide__bullet" data-glide-dir="=1"></button>
              <button className="glide__bullet" data-glide-dir="=2"></button>
              <button className="glide__bullet" data-glide-dir="=3"></button>
            </div>
          </div>

          <h2>Check my other projects!</h2>

          <div className="project-list">
            <ul className="projects">
              <li className="project">
                <div className="project__info">
                  <div className="project__background">
                    <img
                      src={projectImage}
                      alt=""
                    />
                  </div>
                  <div className="project__description">
                    <h4 className="project__title">Simon Game</h4>
                    <p className="project__excerpt">
                      Traditional simon game. This game is the best probably in
                      this world!
                    </p>
                  </div>
                </div>
                <div className="project__link-cover">
                  <a className="project__link" href="https://github.com/">
                    <h4 className="project__title">Simon Game</h4>
                  </a>
                </div>
              </li>
              <li className="project">
                <div className="project__info">
                  <div className="project__background">
                    <img
                     src={projectImage}
                      alt=""
                    />
                  </div>
                  <div className="project__description">
                    <h4 className="project__title">Simon Game</h4>
                    <p className="project__excerpt">
                      Traditional simon game. This game is the best probably in
                      this world!
                    </p>
                  </div>
                </div>
                <div className="project__link-cover">
                  <a className="project__link" href="https://github.com/">
                    <h4 className="project__title">Simon Game</h4>
                  </a>
                </div>
              </li>
              <li className="project">
                <div className="project__info">
                  <div className="project__background">
                    <img
                      src={projectImage}
                      alt=""
                    />
                  </div>
                  <div className="project__description">
                    <h4 className="project__title">Simon Game</h4>
                    <p className="project__excerpt">
                      Traditional simon game. This game is the best probably in
                      this world!
                    </p>
                  </div>
                </div>
                <div className="project__link-cover">
                  <a className="project__link" href="https://github.com/">
                    <h4 className="project__title">Simon Game</h4>
                  </a>
                </div>
              </li>
              <li className="project">
                <div className="project__info">
                  <div className="project__background">
                    <img
                      src={projectImage}
                      alt=""
                    />
                  </div>
                  <div className="project__description">
                    <h4 className="project__title">Simon Game</h4>
                    <p className="project__excerpt">
                      Traditional simon game. This game is the best probably in
                      this world!
                    </p>
                  </div>
                </div>
                <div className="project__link-cover">
                  <a className="project__link" href="https://github.com/">
                    <h4 className="project__title">Simon Game</h4>
                  </a>
                </div>
              </li>
              <li className="project">
                <div className="project__info">
                  <div className="project__background">
                    <img
                      src={projectImage}
                      alt=""
                    />
                  </div>
                  <div className="project__description">
                    <h4 className="project__title">Simon Game</h4>
                    <p className="project__excerpt">
                      Traditional simon game. This game is the best probably in
                      this world!
                    </p>
                  </div>
                </div>
                <div className="project__link-cover">
                  <a className="project__link" href="https://github.com/">
                    <h4 className="project__title">Simon Game</h4>
                  </a>
                </div>
              </li>
              <li className="project">
                <div className="project__info">
                  <div className="project__background">
                    <img
                      src={projectImage}
                      alt=""
                    />
                  </div>
                  <div className="project__description">
                    <h4 className="project__title">Simon Game</h4>
                    <p className="project__excerpt">
                      Traditional simon game. This game is the best probably in
                      this world!
                    </p>
                  </div>
                </div>
                <div className="project__link-cover">
                  <a className="project__link" href="https://github.com/">
                    <h4 className="project__title">Simon Game</h4>
                  </a>
                </div>
              </li>
              <li className="project">
                <div className="project__info">
                  <div className="project__background">
                    <img
                      src={projectImage}
                      alt=""
                    />
                  </div>
                  <div className="project__description">
                    <h4 className="project__title">Simon Game</h4>
                    <p className="project__excerpt">
                      Traditional simon game. This game is the best probably in
                      this world!
                    </p>
                  </div>
                </div>
                <div className="project__link-cover">
                  <a className="project__link" href="https://github.com/">
                    <h4 className="project__title">Simon Game</h4>
                  </a>
                </div>
              </li>
              <li className="project">
                <div className="project__info">
                  <div className="project__background">
                    <img
                      src={projectImage}
                      alt=""
                    />
                  </div>
                  <div className="project__description">
                    <h4 className="project__title">Simon Game</h4>
                    <p className="project__excerpt">
                      Traditional simon game. This game is the best probably in
                      this world!
                    </p>
                  </div>
                </div>
                <div className="project__link-cover">
                  <a className="project__link" href="https://github.com/">
                    <h4 className="project__title">Simon Game</h4>
                  </a>
                </div>
              </li>
            </ul>

            <div className="pagination">
              <ol className="page-numbers">
                <li className="go-left page-number">
                  <span className="material-icons">
                    chevron_left
                  </span>
                </li>
                <li className="page-number current-page">
                  <span>1</span>
                </li>

                <li className="page-number">
                  <span>2</span>
                </li>

                <li className="page-number">
                  <span>3</span>
                </li>

                <li className="page-number">
                  <span>4</span>
                </li>

                <li className="page-number">
                  <span>5</span>
                </li>

                <li className="page-number">
                  <span>6</span>
                </li>

                <li className="page-number">
                  <span>7</span>
                </li>

                <li className="page-number">
                  <span>8</span>
                </li>

                <li className="go-right page-number">
                  <span className="material-icons">
                    chevron_right
                  </span>
                </li>
              </ol>
            </div>
          </div>
        </section>
      </section>
    </>
  );
}
