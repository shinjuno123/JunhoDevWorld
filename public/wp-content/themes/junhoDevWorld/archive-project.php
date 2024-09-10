<?php get_header(); ?>

<section class="project__page">
    <?php
        get_template_part('template-parts/pages/page.project', null, array(
            'show-next-prev-buttons' => false
        )
        );
    ?>
</section>


<?php get_footer(); ?>