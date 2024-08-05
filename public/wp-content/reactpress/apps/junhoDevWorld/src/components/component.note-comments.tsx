import { useState, useImperativeHandle, forwardRef } from "react";
import myFace from "../assets/images/myface.jpg";

export type toggleHandle = {
  toggleComments: () => void;
}


const NoteComment = forwardRef<toggleHandle, object>((_props, ref) => {
  const [isOpen, setIsOpen] = useState("");

  useImperativeHandle(ref, ()=>({
    toggleComments() {
        if (isOpen === "open") {
            setIsOpen("");
        } else {
            setIsOpen("open");
        }
    
      }
  }));

  return (
    <>
      <section className={`comment__section ${isOpen}`}>
        <h3 className="comment__header">Write your comment</h3>
        <hr className="comment__header-hr" />

        <div className="your-comment">
          <img
            src={myFace}
            alt=""
          />
          <textarea
            placeholder="Leave your comment..."
            className="your-comment__textarea"
            name=""
            id=""
          ></textarea>
          <button className="your-comment__submit" type="button">
            Submit
          </button>
        </div>

        <h3 className="comment__header">Comments</h3>
        <hr className="comment__header-hr" />

        <ul className="note-comments">
          <li className="note-comment">
            <img
              src="<?php echo get_template_directory_uri() ?>/images/myface.jpg"
              alt="profile-picture"
            />
            <span>
              This is awesome! Lorem ipsum dolor sit amet, consectetur
              adipiscing elit. Morbi a finibus nisi. Phasellus congue justo et
              lectus varius, at vestibulum ipsum dictum. Etiam luctus ac lorem
              sit amet lobortis. Morbi vestibulum massa non justo bibendum, eget
              tempor eros porttitor. Fusce vel malesuada purus. Aenean sed velit
              volutpat, maximus felis sit amet, sagittis orci. Nulla leo libero,
              maximus ut magna id, mollis pulvinar torto
            </span>
          </li>
          <hr />

          <li className="note-comment">
            <img
              src="<?php echo get_template_directory_uri() ?>/images/myface.jpg"
              alt="profile-picture"
            />
            <span>This is awesome!</span>
          </li>

          <hr />
          <li className="note-comment">
            <img
              src="<?php echo get_template_directory_uri() ?>/images/myface.jpg"
              alt="profile-picture"
            />
            <span>This is awesome!</span>
          </li>
        </ul>
      </section>
    </>
  );
})


export default NoteComment;
