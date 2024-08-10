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

    $subQuery = new WP_Query(
        array(
            'post_type' => array('post'),
            'posts_per_page' => $limit,
            'paged' => 1
        )
    );

    $max_num = $subQuery->max_num_pages + 1;

    $next_page = ($page + 1) % $max_num > 0?  ($page + 1) % $max_num : 1;
    $prev_page = ($max_num  + $page - 1) % $max_num > 0? ($max_num  + $page - 1) % $max_num: $max_num - 1;
    $next_page_url =  get_site_url() . wp_parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH) . "?limit=$limit&page=$next_page";
    $prev_page_url = get_site_url() . wp_parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH) . "?limit=$limit&page=$prev_page";

    $results = array(
        'next_page_url'=> $next_page_url, 
        'prev_page_url'=>  $prev_page_url, 
        'data'=> array(),
        'maxPage' =>  $subQuery->max_num_pages,
        'currentPage' => (int) $page,
        'status' => array(
            'is_success' => false,
            'message' => ''
        )
    );

    if ($results['maxPage'] < (int) $page OR 1 > (int) $page) {
        $results['status']['message'] = 'Please enter correct maximum page or currect page number';
        return new WP_REST_Response($results, 200, ['Content-Type'=> 'application/json']);
    }

    while ($mainQuery->have_posts()) {
        $mainQuery->the_post();

        $categories = get_the_category();
        $category_names = array();

        foreach($categories as $category) {
            array_push($category_names, $category->name);
        }

        array_push($results['data'], array(
            'title' => get_the_title(),
            'content' => get_the_content(),
            'categories' => $category_names,
            'created' => get_the_date(),
            'modified' => get_the_modified_date()
        ));
    }

    $results['status']['is_success'] = true;
    $results['status']['message'] = 'Successfully fetched!';

    return new WP_REST_Response($results, 200, ['Content-Type'=> 'application/json']);
}