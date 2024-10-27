<?php

add_action(hook_name: 'rest_api_init', callback: 'oauthRoute');

function oauthRoute(): void
{
    $base_route = '/oauth';

    register_rest_route(
        route_namespace: $base_route,
        route: "/google",
        args: array(
            'methods' => WP_REST_SERVER::CREATABLE,
            'callback' => 'verifyAccessToken'
        )
    );
}

function requestUserinfo($accessToken)
{
    $response = wp_remote_get(url: 'https://www.googleapis.com/oauth2/v3/tokeninfo', args: array(
        'headers' => array(
            'Authorization' => "Bearer $accessToken"
        )
    ));

    $responseJson = json_decode(json: $response['body']);

    if (property_exists(object_or_class: $responseJson, property: 'error')) {
        return null;
    }

    return $responseJson;
}


function verifyAccessToken($request): WP_REST_Response
{
    $body = json_decode($request->get_body());
    $accessToken = $body->accessToken;
    $userInfo = requestUserinfo($accessToken);
    $results = array(
        'userInfo' => $userInfo,
        'status' => array(
            'is_success' => false,
            'message' => ''
        ),
    );

    if ($userInfo == null) {
        // return 403 forbidden
        $results['status']['is_success'] = false;
        $results['status']['message'] = 'user_invalid';
        return new WP_REST_Response(data: $results, status: 403, headers: ['Content-Type' => 'application/json']);
    }

    wp_remote_post(get_site_url() . '/wp-json/account/register', array(
        'headers' => array('Content-Type' => 'application/json; charset=utf-8'),
        'body' => json_encode(array(
            'username' => $results['userInfo']->email,
            'password' => "doesn_t_matter"
        )),
        'method' => 'POST',
        'data_format' => 'body',
    ));

    // return userinfo
    $results['status']['is_success'] = true;
    $results['status']['message'] = 'user_verified';

    return new WP_REST_Response(data: $results, status: 200, headers: ['Content-Type' => 'application/json']);
}