<?php


function devworld_files()
{
    wp_enqueue_script('devworld-main-js', get_theme_file_uri('/build/index.js'), array(), '1.0', true);
    wp_localize_script(
        'devworld-main-js',
        'devworldData',
        array(
            'root_url' => get_site_url(),
            'permalink' => add_query_arg(array()),
            'nouce' => wp_create_nonce('wp-rest'),
        )
    );
    wp_enqueue_script('react-app-js', content_url() . '/reactpress/apps/junhoDevWorld/dist/assets/index-C8H_DSHt.js', array(), null, true);
    wp_enqueue_style('react-app-css', content_url() . '/reactpress/apps/junhoDevWorld/dist/assets/index-Dlm-TTvw.css', array(), null);
}

add_action('wp_enqueue_scripts', 'devworld_files');


function change_title($title)
{
    return 'Junho Dev World';
}

add_filter('pre_get_document_title', 'change_title');

add_filter('template_redirect', function () {
    # you can do anything you want here but the easiest and safest is
    if (is_404()) {
        wp_redirect("/". '?redirect=' . getCurrentUrlPath());
        exit();
    }
});


function getCurrentUrlPath() {
    return $_SERVER['REQUEST_URI'];
}