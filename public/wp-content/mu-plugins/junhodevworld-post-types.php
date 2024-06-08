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
            'menu_icon' => 'dashicons-welcome-write-blog'
        )
    );
}

add_action('init','junhodevworld_post_types');