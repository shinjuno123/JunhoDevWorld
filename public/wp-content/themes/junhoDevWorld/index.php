<?php get_header(); ?>

<main class="main container">
    <div class="blog-page__outer post__open">
        <div class="blog-page">
            <div class="blog-page__header"><span>Writing</span></div>

            <div class="blog-page__main">
                <ul class="post__list">
                    <li class="post">
                        <span class="post__link">
                            <span>Welcome to this website</span>
                        </span>
                        <p class="post__date-category">01 Jun 2024 - CODE</p>
                        <p class="post__excerpt">
                            I took some time this week to upgrade my site to the newest version of Eleventy. Here's what
                            I learned.
                        </p>
                    </li>

                    <li class="post">
                        <span class="post__link">
                            <span>Welcome to this website</span>
                        </span>
                        <p class="post__date-category">01 Jun 2024 - CODE</p>
                        <p class="post__excerpt">
                            I took some time this week to upgrade my site to the newest version of Eleventy. Here's what
                            I learned.
                        </p>
                    </li>


                    <li class="post">
                        <span class="post__link">
                            <span>Welcome to this website</span>
                        </span>
                        <p class="post__date-category">01 Jun 2024 - CODE</p>
                        <p class="post__excerpt">
                            I took some time this week to upgrade my site to the newest version of Eleventy. Here's what
                            I learned.
                        </p>
                    </li>


                    <li class="post">
                        <span class="post__link">
                            <span>Welcome to this website</span>
                        </span>
                        <p class="post__date-category">01 Jun 2024 - CODE</p>
                        <p class="post__excerpt">
                            I took some time this week to upgrade my site to the newest version of Eleventy. Here's what
                            I learned.
                        </p>
                    </li>


                    <li class="post">
                        <span class="post__link">
                            <span>Welcome to this website</span>
                        </span>
                        <p class="post__date-category">01 Jun 2024 - CODE</p>
                        <p class="post__excerpt">
                            I took some time this week to upgrade my site to the newest version of Eleventy. Here's what
                            I learned.
                        </p>
                    </li>

                </ul>
            </div>
        </div>
    </div>


    <div class="selected-post">
        <div class="selected-post__inner">
            <div class="btn__back-to-post-list__outer">
                <button class="btn__back-to-post-list">Back to list <i
                        class="fa-solid fa-arrow-right icon"></i></button>
            </div>
            <h2 class="selected-post__title">Welcome to this website</h2>
            <div class="selected-post__info">
                <span class="selected-post__uploaded">01 JUN 2024</span> -
                <span><a class="selected-post__category" href="/">CODE</a></span>
            </div>
            <hr>

            <div class="selected-post__content">
                I took some time this week to upgrade my site to the newest version of Eleventy. Here's what
                I learned.
            </div>
        </div>

        <?php get_template_part('template-parts/comment'); ?>
    </div>

</main>


<?php get_footer(); ?>