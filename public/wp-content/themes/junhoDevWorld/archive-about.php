<?php get_header(); ?>

<div class="loading-cover"></div>

<section class="project__section">
    <button class="project__section-fullscreen-btn"><i class="material-symbols-outlined">fullscreen</i></button>

    <!-- Page 1 -->
    <?php get_template_part('template-parts/page.intro'); ?>

    <!-- Page 2 -->
    <?php get_template_part('template-parts/page.history'); ?>

    <!-- Page 3 -->
    <?php get_template_part('template-parts/page.project'); ?>

    <!-- Page 4 -->
    <?php get_template_part('template-parts/page.skillsummary'); ?>


</section>



<?php get_footer(); ?>