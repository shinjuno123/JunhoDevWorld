<?php

add_action('rest_api_init', 'SkillRoute');

function SkillRoute()
{
    $base_route = 'skill/v1';
    $slug = '/skills';

    register_rest_route(
        $base_route,
        $slug,
        array(
            'methods' => WP_REST_SERVER::READABLE,
            'callback' => 'fetchSkills'
        )
    );

    register_rest_route(
        $base_route,
        $slug . '/(?P<id>\d+)',
        array(
            'methods' => WP_REST_Server::READABLE,
            'callback' => 'fetchSkill',
            'show_in_rest' => true
        )

    );
}

function fetchSkills()
{
    $results = array(
        'skills' => [],
        'status' => array(
            'is_success' => false,
            'message' => ''
        )
    );

    $mainQuery = new WP_Query(
        array(
            'post_type' => array('skills'),
            'posts_per_page' => -1,
            'orderby' => 'DSC'
        )
    );

    while ($mainQuery->have_posts()) {
        $mainQuery->the_post();

        array_push($results['skills'], array(
            'id' => get_the_ID(),
            'name' => get_the_title(),
            'description' => get_the_content(),
            'icon' => get_field('skill_icon'),
            'proficiency' => (int) get_field('skill_proficiency')
        ));
    }

    $results['status']['is_success'] = true;
    $results['status']['message'] = "Succeeded to fetch skills";

    return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
}


function fetchSkill(WP_REST_Request $request) {}
