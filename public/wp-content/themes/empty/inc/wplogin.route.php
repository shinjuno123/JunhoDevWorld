<?php

add_action('rest_api_init', 'WPLoginRoute');

function WPLoginRoute()
{
    $base_route = '/account';

    register_rest_route(
        $base_route,
        "/register",
        array(
            'methods' => WP_REST_SERVER::CREATABLE,
            'callback' => 'registerUser'
        )
    );

    register_rest_route(
        $base_route,
        "/login",
        array(
            'methods' => WP_REST_SERVER::CREATABLE,
            'callback' => 'loginUser'
        )
    );


    register_rest_route(
        $base_route,
        "/logout",
        array(
            'methods' => WP_REST_SERVER::CREATABLE,
            'callback' => 'logoutUser'
        )
    );

}

function registerUser($request) {
    $response = json_decode($request->get_body());
    $results = array(
        'status' => array(
            'is_success' => false,
            'message' => ''
        )
    );

    $username = $response->username;
    $password = $response->password;


    if (username_exists($username)) {
        $results['status']['is_success'] = false;
        $results['status']['message'] = "The email already exists";
        return new WP_REST_Response($results, 403, ['Content-Type' => 'application/json']);
    }

    $user_id = wp_create_user($username, $password, $username);

    if (is_wp_error($user_id)) {
        $results['status']['is_success'] = false;
        $results['status']['message'] = $user_id->get_error_message();
        return new WP_REST_Response($results, 403, ['Content-Type' => 'application/json']);
    }

    $results['status']['is_success'] = true;
    $results['status']['message'] = "Successfully registered!";

    return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);

}

function loginUser($request) {
    $response = json_decode($request->get_body());



    return $response;
}

function logoutUser($request) {
    $response = json_decode($request->get_body());
} 