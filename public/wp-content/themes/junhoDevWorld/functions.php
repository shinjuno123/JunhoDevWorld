<?php


function devworld_files() {
    wp_enqueue_script('devworld_js', get_theme_file_uri('/build/index.js'), array('jquery'),'1.0', true);
    wp_enqueue_style('devworld_main_styles', get_theme_file_uri('/build/style-index.css'));
    wp_enqueue_style('devworld_extra_styles', get_theme_file_uri('/build/index.css'));
    wp_enqueue_style('fontawesome','https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css');
}


add_action('wp_enqueue_scripts', 'devworld_files');