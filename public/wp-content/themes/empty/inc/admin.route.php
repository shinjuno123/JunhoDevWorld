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