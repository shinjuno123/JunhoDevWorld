<?php get_header(); ?>

<div class="loading-cover"></div>

<section class="project__section">
    <button class="project__section-fullscreen-btn"><i class="material-symbols-outlined">fullscreen</i></button>

    <!-- Page 1 -->
    <section class="about__intro local-page">
        <div class="button-padding prev-button">
            <button>
                <i class="material-symbols-outlined">arrow_back_ios</i>
                <span>Previous page</span>
            </button>
        </div>

        <h1>Who am I</h1>
        <div class="card">
            <div class="card__intro">
                <div class="card__profile"><img src="<?php echo get_template_directory_uri() ?>/images/myface.jpg?"
                        alt="profile-picture"></div>
                <div class="card__sentence">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna aliqua. Neque volutpat ac tincidunt vitae semper quis. Urna id volutpat
                        lacus laoreet non. Neque sodales ut etiam sit. Mattis nunc sed blandit libero volutpat. Eget
                        egestas purus viverra accumsan in nisl. Quis imperdiet massa tincidunt nunc pulvinar sapien et.
                        Nam libero justo laoreet sit amet cursus sit amet. Venenatis lectus magna fringilla urna
                        porttitor. Enim neque volutpat ac tincidunt vitae semper quis lectus nulla. Amet est placerat in
                        egestas erat imperdiet sed euismod. Vulputate odio ut enim blandit volutpat maecenas. Eu
                        tincidunt tortor aliquam nulla facilisi cras fermentum. Ac tortor dignissim convallis aenean et
                        tortor at. Dolor magna eget est lorem ipsum. Convallis posuere morbi leo urna. Blandit turpis
                        cursus in hac. Hac habitasse platea dictumst vestibulum rhoncus est pellentesque elit
                        ullamcorper. Enim lobortis scelerisque fermentum dui faucibus in. Quam quisque id diam vel quam
                        elementum pulvinar.</p>
                </div>
            </div>
        </div>

        <div class="button-padding next-button">
            <button>
                <span>Next page</span>
                <i class="material-symbols-outlined">arrow_forward_ios</i>
            </button>
        </div>
    </section>

    <!-- Page 2 -->
    <section class="about__history local-page current-page">

        <div class="button-padding prev-button">
            <button>
                <i class="material-symbols-outlined">arrow_back_ios</i>
                <span>Previous page</span>
            </button>
        </div>

        <div class="records">
            <ol class="records__list">
                <li class="record">
                    <i class="material-symbols-outlined">school</i>
                    <span class="record__month-year">03/2014</span>
                    <section class="description">
                        <title>Graduated Middle school</title>
                        <p>Graduated Asan middle school in South Korea.</p>
                    </section>
                </li>

                <li class="record">
                    <i class="material-symbols-outlined">school</i>
                    <span class="record__month-year">03/2014</span>
                    <section class="description">
                        <title>Graduated Middle school</title>
                        <p>Graduated Asan middle school in South Korea.</p>
                    </section>
                </li>

                <li class="record">
                    <i class="material-symbols-outlined">school</i>
                    <span class="record__month-year">03/2014</span>
                    <section class="description">
                        <title>Graduated Middle school</title>
                        <p>Graduated Asan middle school in South Korea.</p>
                    </section>
                </li>
                <li class="record">
                    <i class="material-symbols-outlined">school</i>
                    <span class="record__month-year">03/2014</span>
                    <section class="description">
                        <title>Graduated Middle school</title>
                        <p>Graduated Asan middle school in South Korea.</p>
                    </section>
                </li>
                <li class="record">
                    <i class="material-symbols-outlined">school</i>
                    <span class="record__month-year">03/2014</span>
                    <section class="description">
                        <title>Graduated Middle school</title>
                        <p>Graduated Asan middle school in South Korea.</p>
                    </section>
                </li>
                <li class="record">
                    <i class="material-symbols-outlined">school</i>
                    <span class="record__month-year">03/2014</span>
                    <section class="description">
                        <title>Graduated Middle school</title>
                        <p>Graduated Asan middle school in South Korea.</p>
                    </section>
                </li>
            </ol>

        </div>

        <div class="button-padding next-button">
            <button>
                <span>Next page</span>
                <i class="material-symbols-outlined">arrow_forward_ios</i>
            </button>
        </div>
    </section>

    <!-- Page 3 -->
    <section class="about__hero_projects local-page">

        <div class="button-padding prev-button">
            <button>
                <i class="material-symbols-outlined">arrow_back_ios</i>
                <span>Previous page</span>
            </button>
        </div>
        <div class="glide">
            <div class="glide__track" data-glide-el="track">
                <ul class="glide__slides">
                    <li class="glide__slide">
                        <img src="" alt="">
                        <p></p>
                        <div class="skills">
                            <p class="skill"></p>
                        </div>
                    </li>

                    <li class="glide__slide">
                        <img src="" alt="">
                        <p></p>
                        <div class="skills">
                            <p class="skill"></p>
                        </div>
                    </li>

                    <li class="glide__slide">
                        <img src="" alt="">
                        <p></p>
                        <div class="skills">
                            <p class="skill"></p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <div class="button-padding next-button">
            <button>
                <span>Next page</span>
                <i class="material-symbols-outlined">arrow_forward_ios</i>
            </button>
        </div>
    </section>

    <!-- Page 4 -->
    <section class="about__acknowledgement local-page">


        <div class="button-padding prev-button">
            <button>
                <i class="material-symbols-outlined">arrow_back_ios</i>
                <span>Previous page</span>
            </button>
        </div>

        <div class="button-padding next-button">
            <button>
                <span>Next page</span>
                <i class="material-symbols-outlined">arrow_forward_ios</i>
            </button>
        </div>
    </section>



</section>


<?php get_footer(); ?>