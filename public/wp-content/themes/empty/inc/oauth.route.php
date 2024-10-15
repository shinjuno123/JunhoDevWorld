<?php

add_action('rest_api_init', 'oauthRoute');

function oauthRoute()
{
    $base_route = '/oauth';

    register_rest_route(
        $base_route,
        "/google",
        array(
            'methods' => WP_REST_SERVER::CREATABLE,
            'callback' => 'verifyAccessToken'
        )
    );
}

function requestUserinfo($accessToken) {
    $response = wp_remote_get('https://www.googleapis.com/oauth2/v3/userinfo', array(
        'headers' => array(
            'Authorization'=> "Bearer $accessToken"
        )
    ));

    return $response;
}


function verifyAccessToken($request) {
    $body = json_decode($request->get_body());
    $accessToken = $body->accessToken;
    $userInfo = requestUserinfo($accessToken);
    $results = array(
        'status' => array(
            'is_success' => false,
            'message' => ''
        )
    );

    if ($userInfo == null) {
        // return 403 forbidden

        return new WP_REST_Response($userInfo, 403, ['Content-Type' => 'application/json']);
    }

    // return userinfo
    $results['status']['is_success'] = true;
    $results['status']['message'] = 'user_verified';

    return new WP_REST_Response($userInfo, 200, ['Content-Type' => 'application/json']);
}