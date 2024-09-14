<?php

add_action('rest_api_init', 'projectRoutes');

function projectRoutes()
{
    $base_route = 'project/v1';
    $slug = '/projects';

    register_rest_route(
        $base_route,
        '/outstanding-projects',
        array(
            'method' => WP_REST_SERVER::READABLE,
            'callback' => 'fetchOutstadingProjects'
        )
    );

    // register_rest_route(
    //     $base_route,
    //     $slug . '/(?P<id>\d+)',
    //     array(
    //         'method' => WP_REST_Server::READABLE,
    //         'callback' => 'fetchPost',
    //         'show_in_rest' => true
    //     )

    // );

}


function fetchOutstadingProjects(WP_REST_Request $request) {

    wp_reset_query();
    
    $results = array(
        'projects' => array(),
        'status' => array(
            'is_success' => false,
            'message' => '',
        ),
    );


    $mainQuery = new WP_Query(
        array(
            'post_type' => 'project',
            'orderby' => 'DSC',
            'posts_per_page' => -1
        ),
    );


    while($mainQuery->have_posts()) {
        $mainQuery->the_post();
        $is_outstanding_project = get_field('is_outstanding_project', get_the_ID());

        if(!$is_outstanding_project) {
            continue;
        }

        
        $skills = array_map(function($skillPost){
            return $skillPost->post_title;
        },get_field('skills', get_the_ID()));

        $background_url = get_field('background')['url'];


        array_push($results['projects'], array(
            'id'=> get_the_ID(),
            'title' => get_the_title(),
            'description' => get_the_content(),
            'skills' => $skills,
            'background' => $background_url,
            'github_link' => get_field('github_link'),
            'isOutstandingProject' => $is_outstanding_project,
        ));


    }


    return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
    
}