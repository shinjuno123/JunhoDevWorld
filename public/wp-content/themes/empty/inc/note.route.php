<?php

add_action('rest_api_init', 'noteRoutes');


function noteRoutes() {
    $base_route = 'note/v1';
    $slug = '/notes';

    register_rest_route(
        $base_route,
        $slug,
        array(
            'method' => WP_REST_SERVER::READABLE,
            'callback' => 'fetchNotes'
        )
    );
}


function fetchNotes(WP_REST_Request $request){
    $limit = (int) $request->get_param('limit');
    $page = (int) $request->get_param('page');
    $results = array();
    $mainQuery = new WP_Query(
        array(
            'post_type' => array('note'),
            'posts_per_page' => (is_null($limit) OR $limit < 1)? 5: $limit,
            'paged' => (is_null($page) OR $page < 1)? 1: $page
        )
    );

    $results['notes'] = $mainQuery->posts;
    $results['currentPage'] = is_null($page)? 1: $page;
    $results['maxPage'] =  $mainQuery->max_num_pages;
    $results['status'] = array(
            'is_success' => true,
            'message' => 'successfully loaded notes'
    );

    return $results;
}