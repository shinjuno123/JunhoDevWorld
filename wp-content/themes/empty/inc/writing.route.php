<?php

add_action('rest_api_init', 'writingRoutes');

/**
 * Registers REST API routes for retrieving posts.
 *
 * This function sets up the routes for fetching a list of posts and a single post
 * using the WordPress REST API. It registers two routes under the 'writing/v1' namespace:
 * - '/posts': Calls the 'fetchPosts' function to retrieve a list of posts.
 * - '/posts/(?P<id>\d+)': Calls the 'fetchPost' function to retrieve a single post.
 *
 * @since 0.1.0
 */
function writingRoutes()
{
    $base_route = 'writing/v1';
    $slug = '/posts';

    register_rest_route(
        $base_route,
        $slug,
        array(
            'methods' => WP_REST_SERVER::READABLE,
            'callback' => 'fetchPosts'
        )
    );

    register_rest_route(
        $base_route,
        $slug . '/(?P<id>\d+)',
        array(
            'methods' => WP_REST_Server::READABLE,
            'callback' => 'fetchPost',
            'show_in_rest' => true
        )

    );


}

/**
 * Retrieves all featured posts.
 *
 * This function uses the WordPress REST API to query the database for posts
 * that have the category 'FeaturedPost'. It returns an array of post information
 * with the following keys:
 *
 * - `next_page_url`: The URL of the next page of posts.
 * - `prev_page_url`: The URL of the previous page of posts.
 * - `data`: An array of post information, each with the following keys:
 *   - `id`: The post ID.
 *   - `title`: The post title.
 *   - `excerpt`: The post excerpt.
 *   - `created`: The post creation date.
 *   - `background_image`: The post background image URL.
 *   - `modified`: The post modified date.
 * - `maxPage`: The total number of pages available.
 * - `currentPage`: The current page number.
 * - `allCategories`: An array of all category names.
 * - `status`: An array containing the request status information.
 *
 * @since 0.1.0
 * @return array The array of post information.
 */
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


/**
 * Retrieves a list of posts, or featured posts only, using the WordPress REST API.
 *
 * This function takes a `limit` parameter for the number of posts to retrieve, a `page` parameter
 * for the page number, a `category` parameter for the category name, and an `onlyFeaturedPosts`
 * parameter for only retrieving featured posts. It uses the WordPress REST API to query the
 * database for posts that match the specified category name and limit, and returns an array of
 * post information with the following keys:
 *
 * - `next_page_url`: The URL of the next page of posts.
 * - `prev_page_url`: The URL of the previous page of posts.
 * - `data`: An array of post information, each with the following keys:
 *   - `id`: The post ID.
 *   - `title`: The post title.
 *   - `excerpt`: The post excerpt.
 *   - `categories`: An array of category names.
 *   - `created`: The post creation date.
 *   - `modified`: The post modified date.
 * - `maxPage`: The total number of pages available.
 * - `currentPage`: The current page number.
 * - `allCategories`: An array of all category names.
 * - `status`: An array containing the request status information.
 *
 * @since 0.1.0
 * @param WP_REST_Request $request The request object containing the `limit`, `page`, `category`, and `onlyFeaturedPosts` parameters.
 * @return WP_REST_Response The array of post information.
 */
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

/**
 * Retrieves a single post by ID using the WordPress REST API.
 *
 * This function takes a `WP_REST_Request` object containing the `id` parameter
 * for the post ID. It queries the database for the post matching the specified ID
 * and returns a response with the following keys:
 *
 * - `post`: The post object if found, otherwise null.
 * - `status`: An array containing the request status information:
 *   - `is_success`: Boolean indicating if the post was successfully retrieved.
 *   - `message`: A message indicating the success or failure of the operation.
 *   - `category`: The primary category of the post if found.
 *
 * If a single post is found with the given ID, the response status will indicate
 * success and include the post details. If no post is found or multiple posts are
 * returned, the response status will indicate failure.
 *
 * @since 0.1.0
 * @param WP_REST_Request $request The request object containing the `id` parameter.
 * @return WP_REST_Response The response object containing the post information or an error message.
 */
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