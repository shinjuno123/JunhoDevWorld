<?php get_header(); ?>

<div class="loading-cover"></div>

<section class="about__section">
    <button class="about__section-fullscreen-btn"><i class="material-symbols-outlined">fullscreen</i><span>Full screen</span></button>

    <!-- Page 1 -->
    <?php get_template_part('template-parts/pages/page.intro'); ?>

    <!-- Page 2 -->
    <?php get_template_part('template-parts/pages/page.history'); ?>

    <!-- Page 3 -->
    <?php get_template_part('template-parts/pages/page.project'); ?>

    <!-- Page 4 -->
    <?php get_template_part('template-parts/pages/page.skillsummary'); ?>


</section>



<?php get_footer(); ?>