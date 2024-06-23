<section class="comment__section">
    <h3 class="comment__header">Write your comment</h3>
    <hr class="comment__header-hr">

    <div class="your-comment">
        <img src="<?php echo get_template_directory_uri() ?>/images/myface.jpg" alt="">
        <textarea placeholder="Leave your comment..." class="your-comment__textarea" name="" id=""></textarea>
        <button class="your-comment__submit" type="button">Submit</button>
    </div>

    <h3 class="comment__header">Comments</h3>
    <hr class="comment__header-hr">

    <ul class="note-comments">
        <li class="note-comment">
            <img src="<?php echo get_template_directory_uri() ?>/images/myface.jpg" alt="profile-picture">
            <span>This is awesome! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a finibus nisi. Phasellus congue justo et lectus varius, at vestibulum ipsum dictum. Etiam luctus ac lorem sit amet lobortis. Morbi vestibulum massa non justo bibendum, eget tempor eros porttitor. Fusce vel malesuada purus. Aenean sed velit volutpat, maximus felis sit amet, sagittis orci. Nulla leo libero, maximus ut magna id, mollis pulvinar torto</span>
        </li>
        <hr>

        <li class="note-comment">
            <img src="<?php echo get_template_directory_uri() ?>/images/myface.jpg" alt="profile-picture">
            <span>This is awesome!</span>
        </li>

        <hr>
        <li class="note-comment">
            <img src="<?php echo get_template_directory_uri() ?>/images/myface.jpg" alt="profile-picture">
            <span>This is awesome!</span>
        </li>
    </ul>

</section>