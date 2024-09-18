<?php

add_action('rest_api_init', 'writingRoutes');

function writingRoutes()
{
    $base_route = 'writing/v1';
    $slug = '/posts';

    register_rest_route(
        $base_route,
        $slug,
        array(
            'method' => WP_REST_SERVER::READABLE,
            'callback' => 'fetchPosts'
        )
    );

    register_rest_route(
        $base_route,
        $slug . '/(?P<id>\d+)',
        array(
            'method' => WP_REST_Server::READABLE,
            'callback' => 'fetchPost',
            'show_in_rest' => true
        )

    );


}

function getOnlyFeaturedPosts() {
    $results = array(
        'next_page_url' => '',
        'prev_page_url' => '',
        'data' => array(),
        'maxPage' => 1,
        'currentPage' => 1,
        'allCategories' => [],
        'status' => array(
            'is_success' => false,
            'message' => ''
        )
    );

    $mainQuery = new WP_Query(
        array(
            'post_type' => array('post'),
            'posts_per_page' => -1,
            'category_name' => 'FeaturedPost',
            'orderby' => 'DSC'
        )
    );


    while($mainQuery->have_posts()) {
        $mainQuery->the_post();

        array_push($results['data'], array(
            'id' => get_the_ID(),
            'title' => get_the_title(),
            'excerpt' => get_the_excerpt(),
            'created' => get_the_date(),
            'background_image' => get_field('background_image'),
            'modified' => get_the_modified_date()
        ));
    }

    return $results;
}


function fetchPosts(WP_REST_Request $request)
{
    $limit = $request->get_param('limit');
    $page = $request->get_param('page');
    $category = $request->get_param('category');
    $onlyFeaturedPosts = $request->get_param('onlyFeaturedPosts') === 'TRUE' || $request->get_param('onlyFeaturedPosts') === 'true'? true: false;


    if ($onlyFeaturedPosts) {
        $results = getOnlyFeaturedPosts();
        $results['status']['message'] = 'Succeeded to call featured posts only';
        $results['status']['is_success'] = true;

        return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
    }

    $mainQuery = new WP_Query(
        array(
            'post_type' => array('post'),
            'posts_per_page' => $limit,
            'paged' => $page,
            'category_name' => $category,
            'orderby' => 'DSC'
        )
    );


    $max_num = $mainQuery->max_num_pages + 1;

    $next_page = ($page + 1) % $max_num > 0 ? ($page + 1) % $max_num : 1;
    $prev_page = ($max_num + $page - 1) % $max_num > 0 ? ($max_num + $page - 1) % $max_num : $max_num - 1;
    $next_page_url = get_site_url() . wp_parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH) . "?limit=$limit&page=$next_page&category=$category";
    $prev_page_url = get_site_url() . wp_parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH) . "?limit=$limit&page=$prev_page&category=$category";

    $all_categories = get_categories();
    $category_names = array();

    foreach ($all_categories as $each_category) {
        array_push($category_names, $each_category->name);
    }

    $results = array(
        'next_page_url' => $next_page_url,
        'prev_page_url' => $prev_page_url,
        'data' => array(),
        'maxPage' => $mainQuery->max_num_pages,
        'currentPage' => (int) $page,
        'allCategories' => $category_names,
        'status' => array(
            'is_success' => false,
            'message' => ''
        )
    );

    if ($results['maxPage'] < (int) $page or 1 > (int) $page) {
        $results['status']['message'] = 'Please enter correct maximum posts per a page or currect page number';
        return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
    }

    while ($mainQuery->have_posts()) {
        $mainQuery->the_post();

        $categories = get_the_category();
        $category_names = array();

        foreach ($categories as $category) {
            array_push($category_names, $category->name);
        }

        array_push($results['data'], array(
            'id' => get_the_ID(),
            'title' => get_the_title(),
            'excerpt' => get_the_excerpt(),
            'categories' => $category_names,
            'created' => get_the_date(),
            'modified' => get_the_modified_date()
        ));
    }

    $results['status']['is_success'] = true;
    $results['status']['message'] = 'Successfully fetched!';

    return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
}

function fetchPost(WP_REST_Request $request)
{

    $result = array('status' => array(
            'is_success' => false,
            'message' => 'Failed to load id=' . $request->get_param('id') . ' or too many same ids found. Please try other ids.',
            'category' => ''
        )
    );

    $result['post'] = null;

    $mainQuery = new WP_Query(
        array(
            'post_type' => array('post'),
            'p' => $request->get_param('id')
        )
    );

    if (count($mainQuery->posts) == 1) {
        $result['post'] = $mainQuery->posts[0];
        $result['status']['is_success'] = true;
        $result['status']['message'] = 'Succeeded to load the post ' . $request->get_param('id');
        $result['status']['category'] =  get_the_category_by_ID($mainQuery->posts[0]->post_category[0]);

        return new WP_REST_Response($result, 200, ['Content-Type' => 'application/json']);
    }

    return new WP_REST_Response($result, 404, ['Content-Type' => 'application/json']);
}