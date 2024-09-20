<?php

add_action('rest_api_init', 'AdminRoute');

function AdminRoute()
{
    $base_route = 'admin/v1';
    $slug = '/admin-info';

    register_rest_route(
        $base_route,
        $slug,
        array(
            'method' => WP_REST_SERVER::READABLE,
            'callback' => 'fetchAdminInfo'
        )
    );


    register_rest_route(
        $base_route,
        $slug . '/history',
        array(
            'method' => WP_REST_SERVER::READABLE,
            'callback' => 'fetchAdminHistory'
        )
    );

}

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

function fetchAdminHistory() {
    $results = array(
        'histories' => array(),
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
            'icon' => get_field('icon')['url'],
            'place' => get_field('place'),
            'date' =>  get_field('date')
        ));
    }

    $results['status']['is_success'] = true;
    $results['status']['message'] = 'Succeeded to call history records';

    return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
}