<?php


function devworld_files()
{
    wp_enqueue_script('devworld-main-js', get_theme_file_uri('/build/index.js'), array(), '1.0', true);
    wp_localize_script('devworld-main-js', 'devworldData', array(
        'root_url' => get_site_url(),
        'permalink' => add_query_arg(array()),
        'nouce' => wp_create_nonce('wp-rest'),
    )
    );
    wp_enqueue_script('react-app-js',content_url(). '/reactpress/apps/junhoDevWorld/dist/assets/index-BKem7Ire.js', array(), null, true);
    wp_enqueue_style('react-app-css', content_url() . '/reactpress/apps/junhoDevWorld/dist/assets/index-C6feoxj3.css', array(), null);
}

add_action('wp_enqueue_scripts', 'devworld_files');
