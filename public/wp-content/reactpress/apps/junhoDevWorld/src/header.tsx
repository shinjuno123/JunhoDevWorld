import { Link, useLocation } from "react-router-dom";
import face from "./assets/images/myface.jpg";
import "material-icons/iconfont/material-icons.scss";
import { useState } from "react";

export default function Header() {
  const [headerState, setHeaderState] = useState('closed');
  const pathName: string = useLocation().pathname;

  function toggleNavigation() {
    setHeaderState((headerState === 'closed'? 'opened':'closed'));

    if (headerState === 'closed') {
      document.body.classList.add('overflow-y-hidden');
    } else {
      document.body.classList.remove('overflow-y-hidden');
    }
  }


  function closeNavigation() {
    setHeaderState('closed');
    document.body.classList.remove('overflow-y-hidden');
  }



  return (
    <>
      <header className="header">
        <div className="header__inner container">
          <Link className="header__brand" to="/">
            <img className="header__avatar" src={face} alt=""></img>
            <span className="header__info">
              <span>Junho Shin</span>
              <span className="header__verification">
                <span className="material-icons">check</span>
              </span>
            </span>
          </Link>

          <div className="header__nav">
            <nav className={`nav ${headerState === 'opened'? 'nav--open':''}`}>
              <button className={`iconbtn nav__togglebtn`} onClick={toggleNavigation}>
                <span className="menuicon">
                  <span className="menuicon__bar"></span>
                  <span className="menuicon__bar"></span>
                  <span className="menuicon__bar"></span>
                  <span className="menuicon__bar"></span>
                </span>
              </button>

              <div className="nav__content">
                <ul className="nav__menu" id="nav__menu">
                  <li
                    className={`nav__item ${
                      pathName == "/" ? "nav__item--active" : ""
                    }`}
                  >
                    <Link className="nav__link" to="/" onClick={closeNavigation}>
                      <span className="nav__num">01</span> home
                    </Link>
                  </li>
                  <li
                    className={`nav__item ${
                      pathName == "/posts" ? "nav__item--active" : ""
                    }`}
                  >
                    <Link className="nav__link" to="/posts" onClick={closeNavigation}>
                      <span className="nav__num">02</span> writing
                    </Link>
                  </li>
                  <li
                    className={`nav__item ${
                      pathName == "/notes" ? "nav__item--active" : ""
                    }`}
                  >
                    <Link className="nav__link" to="/notes" onClick={closeNavigation}>
                      <span className="nav__num">03</span> notes
                    </Link>
                  </li>
                  <li
                    className={`nav__item ${
                      pathName == "/projects" ? "nav__item--active" : ""
                    }`}
                  >
                    <Link className="nav__link" to="/projects"  onClick={closeNavigation}>
                      <span className="nav__num">04</span> projects
                    </Link>
                  </li>
                  <li
                    className={`nav__item ${
                      pathName == "/about" ? "nav__item--active" : ""
                    }`}
                  >
                    <Link className="nav__link" to="/about" onClick={closeNavigation}>
                      <span className="nav__num">05</span> about
                    </Link>
                  </li>
                </ul>
              </div>

              <div className="nav__bg">
                <div className="nav__bg__circle"></div>
              </div>
            </nav>
          </div>
        </div>
      </header>
    </>
  );
}
