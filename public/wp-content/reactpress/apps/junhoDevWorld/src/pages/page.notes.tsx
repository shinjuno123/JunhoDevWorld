import { useRef } from "react";
import myFace from "../assets/images/myface.jpg";
import NoteComment, { toggleHandle } from "../components/component.note-comments";

export default function Notes() {
  const noteCommentRef = useRef<toggleHandle>(null);


  function openPost() {
    noteCommentRef.current?.toggleComments();
  }

  return (
    <>
      <main className="main container">
        <section className="section__notes">
          <span className="notes__header">Notes</span>
          <ul className="notes">
            <li className="note">
              <header className="note__header ">
                <img className="note-profile__image" src={myFace} alt="" />
                <div className="note-profile">
                  <span className="note-profile__name">Junho Shin</span>
                  <span className="note-profile__uploaded">20 min ago</span>
                </div>
              </header>

              <main className="note__main">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                enim ad minim veniam, quis nostrud exercitation ullamco laboris
                nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                in reprehenderit in voluptate velit esse cillum dolore eu fugiat
                nulla pariatur. Excepteur sint occaecat cupidatat non proident,
                sunt in culpa qui officia deserunt mollit anim id est laborum.
              </main>

              <footer className="note__footer">
                <div className="left">
                  <i className="material-icons fa-regular">favorite_border</i>
                  <span> You and 201 people like this</span>
                </div>

                <div className="right">
                  <button type="button" onClick={openPost}>
                    <i className="material-icons fa-comment">
                      chat_bubble_outline
                    </i>
                    <span>20</span>
                  </button>
                </div>
              </footer>

              <NoteComment ref={noteCommentRef}/>
            </li>

            <li className="note">
              <header className="note__header">
                <img className="note-profile__image" src={myFace} alt="" />
                <div className="note-profile">
                  <span className="note-profile__name">Junho Shin</span>
                  <span className="note-profile__uploaded">20 min ago</span>
                </div>
              </header>

              <main className="note__main">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                enim ad minim veniam, quis nostrud exercitation ullamco laboris
                nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                in reprehenderit in voluptate velit esse cillum dolore eu fugiat
                nulla pariatur. Excepteur sint occaecat cupidatat non proident,
                sunt in culpa qui officia deserunt mollit anim id est laborum.
              </main>

              <footer className="note__footer">
                <div className="left">
                  <i className="fa-regular fa-heart"></i>
                  <span> You and 201 people like this</span>
                </div>

                <div className="right">
                  <button>
                    <i className="fa-regular fa-comment"></i>
                    <span>20</span>
                  </button>
                </div>
              </footer>
            </li>

            <li className="note">
              <header className="note__header">
                <img className="note-profile__image" src={myFace} alt="" />
                <div className="note-profile">
                  <span className="note-profile__name">Junho Shin</span>
                  <span className="note-profile__uploaded">20 min ago</span>
                </div>
              </header>

              <main className="note__main">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                enim ad minim veniam, quis nostrud exercitation ullamco laboris
                nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                in reprehenderit in voluptate velit esse cillum dolore eu fugiat
                nulla pariatur. Excepteur sint occaecat cupidatat non proident,
                sunt in culpa qui officia deserunt mollit anim id est laborum.
              </main>

              <footer className="note__footer">
                <div className="left">
                  <i className="fa-regular fa-heart"></i>
                  <span> You and 201 people like this</span>
                </div>

                <div className="right">
                  <button>
                    <i className="fa-regular fa-comment"></i>
                    <span>20</span>
                  </button>
                </div>
              </footer>
            </li>

            <li className="note">
              <header className="note__header">
                <img className="note-profile__image" src={myFace} alt="" />
                <div className="note-profile">
                  <span className="note-profile__name">Junho Shin</span>
                  <span className="note-profile__uploaded">20 min ago</span>
                </div>
              </header>

              <main className="note__main">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                enim ad minim veniam, quis nostrud exercitation ullamco laboris
                nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                in reprehenderit in voluptate velit esse cillum dolore eu fugiat
                nulla pariatur. Excepteur sint occaecat cupidatat non proident,
                sunt in culpa qui officia deserunt mollit anim id est laborum.
              </main>

              <footer className="note__footer">
                <div className="left">
                  <i className="fa-regular fa-heart"></i>
                  <span> You and 201 people like this</span>
                </div>

                <div className="right">
                  <button>
                    <i className="fa-regular fa-comment"></i>
                    <span>20</span>
                  </button>
                </div>
              </footer>
            </li>

            <li className="note">
              <header className="note__header">
                <img className="note-profile__image" src={myFace} alt="" />
                <div className="note-profile">
                  <span className="note-profile__name">Junho Shin</span>
                  <span className="note-profile__uploaded">20 min ago</span>
                </div>
              </header>

              <main className="note__main">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                enim ad minim veniam, quis nostrud exercitation ullamco laboris
                nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                in reprehenderit in voluptate velit esse cillum dolore eu fugiat
                nulla pariatur. Excepteur sint occaecat cupidatat non proident,
                sunt in culpa qui officia deserunt mollit anim id est laborum.
              </main>

              <footer className="note__footer">
                <div className="left">
                  <i className="fa-regular fa-heart"></i>
                  <span> You and 201 people like this</span>
                </div>

                <div className="right">
                  <button>
                    <i className="fa-regular fa-comment"></i>
                    <span>20</span>
                  </button>
                </div>
              </footer>
            </li>

            <li className="note">
              <header className="note__header">
                <img className="note-profile__image" src={myFace} alt="" />
                <div className="note-profile">
                  <span className="note-profile__name">Junho Shin</span>
                  <span className="note-profile__uploaded">20 min ago</span>
                </div>
              </header>

              <main className="note__main">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                enim ad minim veniam, quis nostrud exercitation ullamco laboris
                nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                in reprehenderit in voluptate velit esse cillum dolore eu fugiat
                nulla pariatur. Excepteur sint occaecat cupidatat non proident,
                sunt in culpa qui officia deserunt mollit anim id est laborum.
              </main>

              <footer className="note__footer">
                <div className="left">
                  <i className="fa-regular fa-heart"></i>
                  <span> You and 201 people like this</span>
                </div>

                <div className="right">
                  <button>
                    <i className="fa-regular fa-comment"></i>
                    <span>20</span>
                  </button>
                </div>
              </footer>
            </li>
          </ul>
        </section>
      </main>
    </>
  );
}
