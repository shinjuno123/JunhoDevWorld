<?php

function junhodevworld_post_types() {
    register_post_type(
        'note',
        array(
            'has_archive' => true,
            'show_in_test' => true,
            'public' => true,
            'labels' => array(
                'name' => 'Notes',
                'add_new_item' => 'Add New Note',
                'edit_item' => 'Edit Note',
                'all_items' => 'All Notes',
                'singular_name'=>'Note'
            ),
            'menu_icon' => 'dashicons-welcome-write-blog',
            'show_in_rest' => true,
        ),

    );


    register_post_type(
        'project',
        array(
            'supports' => array('excerpt','title', 'editor'),
            'has_archive' => true,
            'show_in_test' => true,
            'public' => true,
            'labels' => array(
                'name' => 'Projects',
                'add_new_item' => 'Add New Project',
                'edit_item' => 'Edit Project',
                'all_items' => 'All Projects',
                'singular_name'=>'Project'
            ),
            'menu_icon' => 'dashicons-clipboard'
        )
    );


    register_post_type(
        'about',
        array(
            'has_archive' => true,
            'show_in_test' => true,
            'public' => true,
            'labels' => array(
                'name' => 'About',
                'add_new_item' => 'Add New About',
                'edit_item' => 'Edit About',
                'all_items' => 'All Abouts',
                'singular_name'=>'About'
            ),
            'menu_icon' => 'dashicons-id-alt'
        )
    );

    register_post_type(
        'skills',
        array(
            'has_archive' => true,
            'show_in_test' => true,
            'public' => true,
            'labels' => array(
                'name' => 'Skills',
                'add_new_item' => 'Add New Skills',
                'edit_item' => 'Edit Skills',
                'all_items' => 'All Skills',
                'singular_name'=>'Skills'
            ),
            'menu_icon' => 'dashicons-book'
        )
    );

    register_post_type(
        'history',
        array(
            'has_archive' => true,
            'show_in_test' => true,
            'public' => true,
            'labels' => array(
                'name' => 'History',
                'add_new_item' => 'Add New History',
                'edit_item' => 'Edit History',
                'all_items' => 'All History',
                'singular_name'=>'History'
            ),
            'menu_icon' => 'dashicons-hourglass'
        )
    );

    register_post_type(
        'work',
        array(
            'has_archive' => true,
            'show_in_test' => true,
            'public' => true,
            'labels' => array(
                'name' => 'Work Experience',
                'add_new_item' => 'Add Work Experience',
                'edit_item' => 'Edit Work Experience',
                'all_items' => 'All Work Experiences',
                'singular_name'=>'Work Experience'
            ),
            'menu_icon' => 'dashicons-businessman'
        )
    );
}

add_action('init','junhodevworld_post_types');