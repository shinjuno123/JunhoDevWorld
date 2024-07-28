export default function Comment() {
  return (
    <>
      <section className="comments__section">
        <hr />
        <span className="leave-comment__title">Leave yours!</span>
        <div className="leave-comment">
          <img
            className="leave-comment__profile"
            src="<?php echo get_template_directory_uri() ?>/images/myface.jpg"
            alt="profile-image"
          />
          <textarea
            className="leave-comment__textarea"
            name=""
            id=""
            placeholder="Leave your comment..."
            rows={3}
          ></textarea>
          <button className="leave-comment__submit" type="button">
            submit
          </button>
        </div>

        <hr />
        <ul className="comments">
          <span className="comments__title">Comments</span>
          <li className="comment">
            <img
              className="comment__profile"
              src="<?php echo get_template_directory_uri() ?>/images/myface.jpg"
              alt="profile-image"
            />
            <p className="comment__message">
              Nice work! Keep it up! Lorem ipsum dolor sit amet, consectetur
              adipiscing elit. Morbi a finibus nisi. Phasellus congue justo et
              lectus varius, at vestibulum ipsum dictum. Etiam luctus ac lorem
              sit amet lobortis. Morbi vestibulum massa non justo bibendum, eget
              tempor eros porttitor. Fusce vel malesuada purus. Aenean sed velit
              volutpat, maximus felis sit amet, sagittis orci. Nulla leo libero,
              maximus ut magna id, mollis pulvinar tortor.
            </p>
            <hr />
          </li>

          <li className="comment">
            <img
              className="comment__profile"
              src="<?php echo get_template_directory_uri() ?>/images/myface.jpg"
              alt="profile-image"
            />
            <p className="comment__message">Nice work! Keep it up!</p>
            <hr />
          </li>

          <li className="comment">
            <img
              className="comment__profile"
              src="<?php echo get_template_directory_uri() ?>/images/myface.jpg"
              alt="profile-image"
            />
            <p className="comment__message">Nice work! Keep it up!</p>
            <hr />
          </li>

          <li className="comment">
            <img
              className="comment__profile"
              src="<?php echo get_template_directory_uri() ?>/images/myface.jpg"
              alt="profile-image"
            />
            <p className="comment__message">Nice work! Keep it up!</p>
            <hr />
          </li>
        </ul>

        <hr />
      </section>
    </>
  );
}
