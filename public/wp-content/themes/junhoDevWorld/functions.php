<?php


function devworld_files() {
    //<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    wp_enqueue_script('devworld-main-js', get_theme_file_uri('/build/index.js'), array(),'1.0', true);
    wp_enqueue_style('devworld-main-styles', get_theme_file_uri('/build/style-index.css'));
    wp_enqueue_style('devworld-extra-styles', get_theme_file_uri('/build/index.css'));
    wp_enqueue_style('fontawesome','//cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css');
    wp_enqueue_style('custom-google-fonts', '//fonts.googleapis.com/css2?family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&display=swap');
    wp_enqueue_style('custom-google-icons', '//fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200');

    wp_localize_script('devworld-main-js','devworldData', array(
        'root_url' => get_site_url(),
        'permalink' => add_query_arg(array()),
        'nouce' => wp_create_nonce('wp-rest'),
    ));
}


add_action('wp_enqueue_scripts','devworld_files');
