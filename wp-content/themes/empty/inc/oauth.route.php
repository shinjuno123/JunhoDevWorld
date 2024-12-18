<?php

add_action(hook_name: 'rest_api_init', callback: 'oauthRoute');

/**
 * Register REST route for OAuth callbacks.
 *
 * This function registers a REST route on the base route /oauth which will
 * accept POST requests to /platforms/{platform}. The callback function
 * verifyAccessToken will be called with the request and the platform name
 * as arguments.
 */
function oauthRoute(): void
{
    $base_route = '/oauth';

    register_rest_route(
        route_namespace: $base_route,
        route: "/platforms/(?P<platform>\w+)",
        args: array(
            'methods' => WP_REST_SERVER::CREATABLE,
            'callback' => 'verifyAccessToken'
        )
    );

}

/**
 * Request userinfo from Google's OAuth2 tokeninfo endpoint.
 *
 * The userinfo endpoint returns a JSON object with the following properties:
 * - azp: The client_id of the application that made the request.
 * - aud: The client_id of the application that made the request.
 * - sub: The profile ID of the user.
 * - email: The user's email address.
 * - email_verified: A boolean indicating if the user's email is verified.
 * - name: The user's full name.
 *
 * If the request fails (e.g. due to an invalid access token), the function
 * returns null.
 *
 * @param string $accessToken The OAuth2 access token.
 *
 * @return stdClass|null The userinfo object, or null if the request fails.
 */
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


/**
 * Handles an OAuth callback from a given platform.
 *
 * The function takes a WP_REST_Request object and returns a WP_REST_Response
 * object. The response contains a "status" property which is an object with
 * two properties: "is_success" (boolean) and "message" (string). The "message"
 * property is either "user_invalid", "user_verified", or "invalid_platform".
 *
 * The function also returns a "userInfo" property which is an object with the
 * following properties:
 * - azp: The client_id of the application that made the request.
 * - aud: The client_id of the application that made the request.
 * - sub: The profile ID of the user.
 * - email: The user's email address.
 * - email_verified: A boolean indicating if the user's email is verified.
 * - name: The user's full name.
 *
 * If the request fails (e.g. due to an invalid access token), the "userInfo"
 * property is null.
 */
function verifyAccessToken($request): WP_REST_Response
{
    $body = json_decode($request->get_body());
    $platform = $request->get_param( 'platform' );
    $results = array(
        'userInfo' => null,
        'status' => array(
            'is_success' => false,
            'message' => ''
        ),
    );

    if ($platform == "google") {
        $accessToken = $body->accessToken;
        $userInfo = requestUserinfo($accessToken);
        $results['userInfo'] = $userInfo;

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

        $results['status']['is_success'] = true;
        $results['status']['message'] = 'user_verified';

        return new WP_REST_Response(data: $results, status: 200, headers: ['Content-Type' => 'application/json']);
    }

    if ($platform == 'github') {

    }

    $results['status']['is_success'] = false;
    $results['status']['message'] = 'invalid_platform';
    return new WP_REST_Response(data: $results, status: 403, headers: ['Content-Type' => 'application/json']);

}