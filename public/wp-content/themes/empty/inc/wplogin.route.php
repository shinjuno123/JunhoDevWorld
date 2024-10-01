<?php

add_action('rest_api_init', 'WPLoginRoute');

function WPLoginRoute()
{
    $base_route = '/account';

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

function loginUser($request) {
    $response = $request->get_body();

    $res = new WP_REST_Response($response);
    $res->set_status(200);

    return ['req' => $res];
}

function logoutUser($request) {

}