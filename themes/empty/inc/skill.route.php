<?php

add_action('rest_api_init', 'SkillRoute');

/**
 * Registers custom REST API routes for the 'skill' namespace.
 *
 * This function defines two routes under the 'skill/v1' namespace:
 * 1. '/skills' - A route to fetch a list of skills, handled by the 'fetchSkills' callback.
 * 2. '/skills/(?P<id>\d+)' - A route to fetch a specific skill by its ID, handled by the 'fetchSkill' callback.
 *
 * Both routes are registered as readable.
 */
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
}

/**
 * Fetches all skills from the WordPress database and returns them in a JSON response.
 *
 * @return WP_REST_Response A JSON response containing a list of skills, each with an ID, name, description, icon and proficiency.
 */
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

