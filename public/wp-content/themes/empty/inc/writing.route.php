<?php

add_action('rest_api_init', 'writingRoutes');

function writingRoutes()
{
    $base_route = 'writing/v1';
    $slug = 'posts';

    register_rest_route(
        $base_route,
        $slug,
        array(
            'method' => WP_REST_SERVER::READABLE,
            'callback' => 'fetchPosts'
        )
    );
}


function fetchPosts(WP_REST_Request $request)
{
    $limit = $request->get_param('limit');
    $page = $request->get_param('page');

    $mainQuery = new WP_Query(
        array(
            'post_type' => array('post'),
            'posts_per_page' => $limit,
            'paged' => $page
        )
    );

    $results = array(
        'maxPage' => $mainQuery->max_num_pages,
        'currentPage' => (int) $page
    );

    while ($mainQuery->have_posts()) {
        $mainQuery->the_post();

        array_push($results, array(
            'title' => get_the_title(),
            'content' => get_the_content()
        ));
    }

    return $results;
}