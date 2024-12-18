<?php

add_action('rest_api_init', 'AdminRoute');

/**
 * Registers REST API routes for admin information.
 *
 * This function sets up the routes for fetching admin information and admin history
 * using the WordPress REST API. It registers two routes under the 'admin/v1' namespace:
 * - '/admin-info': Calls the 'fetchAdminInfo' function to retrieve admin information.
 * - '/admin-info/history': Calls the 'fetchAdminHistory' function to retrieve admin history.
 *
 * @since 1.0.0
 */
function AdminRoute()
{
    $base_route = 'admin/v1';
    $slug = '/admin-info';

    register_rest_route(
        $base_route,
        $slug,
        array(
            'methods' => WP_REST_SERVER::READABLE,
            'callback' => 'fetchAdminInfo'
        )
    );


    register_rest_route(
        $base_route,
        $slug . '/history',
        array(
            'methods' => WP_REST_SERVER::READABLE,
            'callback' => 'fetchAdminHistory'
        )
    );

}

/**
 * Retrieves admin information.
 *
 * This function sets up the route for fetching admin information and history.
 * It uses the WordPress REST API to register a route under the 'admin/v1' namespace
 * with the '/admin-info' slug. This route is reachable via the GET method.
 *
 * The function fetches the current administrator's information, including their
 * name, description, and avatar URL. It returns this information as a JSON object
 * with the 'adminInfo' key, and also sets up a 'status' key to indicate whether
 * the request was successful or not.
 *
 * @since 1.0.0
 *
 * @return WP_REST_Response The response object.
 */
function fetchAdminInfo() {
    $results = array(
        'adminInfo' => array(),
        'status' => array(
            'is_success' => false,
            'message' => 'Failed to load admin info'
        )
    );

    $users = get_users(array(
        'role' => 'administrator'
    ));


    if (!empty($users)) {
        $admin = $users[0];
        $avatar_url = get_avatar_url($admin->data->ID);
        $userInfo = get_user_meta($admin->data->ID);

        // print_r($userInfo);

        $results['adminInfo'] = array(
            'name' => $userInfo['first_name'][0] . ' ' . $userInfo['last_name'][0],
            'description' => $userInfo['description'][0],
            'avatarUrl' => $avatar_url
        );

        $results['status']['is_success'] = true;
        $results['status']['message'] = 'Succeeded to load admin info';
        return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
    }

    return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
}


/**
 * Fetches all work history posts.
 *
 * @since 1.0.0
 *
 * @return array Array of work history post objects.
 */
function fetchWorkHistory() {
    $results = array();

    $mainQuery = new WP_Query(
        array(
            'post_type' => array('work'),
            'posts_per_page' => -1,
            'meta_key' => 'from',
            'orderby' => 'meta_value',
            'order' => 'ASC'
        )
    );


    while ($mainQuery->have_posts()){
        $mainQuery->the_post();

        array_push($results, array(
            'id' => get_the_ID(),
            'title' => get_the_title(),
            'description' => get_the_content(),
            'icon' => get_field('icon'),
            'company'=> get_field('company'),
            'from' => get_field('from'),
            'to' =>  get_field('to')
        ));

    }


    return $results;
}

/**
 * Fetches histories and work histories.
 *
 * @since 1.0.0
 *
 * @return WP_REST_Response Returns a JSON response containing history and work history records.
 */
function fetchAdminHistory() {
    $results = array(
        'histories' => array(),
        'workHistories' => array(),
        'status' => array(
            'is_success' => false,
            'message' => 'Failed to load admin info'
        )
    );

    $mainQuery = new WP_Query(
        array(
            'post_type' => array('history'),
            'posts_per_page' => -1,
            'meta_key' => 'date',
            'orderby' => 'meta_value',
            'order' => 'ASC'
        )
    );

    while ($mainQuery->have_posts()){
        $mainQuery->the_post();

        array_push($results['histories'], array(
            'id' => get_the_ID(),
            'title' => get_the_title(),
            'description' => get_the_content(),
            'icon' => get_field('icon'),
            'place' => get_field('place'),
            'date' =>  get_field('date')
        ));
    }

    wp_reset_query();

    $results['workHistories'] = fetchWorkHistory();

    $results['status']['is_success'] = true;
    $results['status']['message'] = 'Succeeded to call history records';

    return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
}