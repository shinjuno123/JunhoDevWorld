<?php

add_action('rest_api_init', 'WPLoginRoute');

/**
 * Registers REST API routes for handling user login and registration.
 *
 * @since 1.0.0
 */
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
        "/logged-in",
        array(
            'methods' => WP_REST_SERVER::CREATABLE,
            'callback' => 'isLoggedIn'
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

/**
 * Handles user registration.
 *
 * @since 1.0.0
 *
 * @param WP_REST_Request $request The request object.
 * @return WP_REST_Response The response object.
 */
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

/**
 * Logs the user in.
 *
 * @since 1.0.0
 *
 * @param WP_REST_Request $request The request object containing the username and password.
 * @return WP_REST_Response The response object indicating the login status.
 */
function loginUser($request) {
    $response = json_decode($request->get_body());
    $results = array();

    $cred = array();
    $cred['user_login'] = $response->username;
    $cred['user_password'] = $response->password;
    $cred['remember'] = true;
    
    $user = wp_signon($cred, false);

    if (is_wp_error($user)) {
        $results['status'] = array(
            'user' => null,
            'is_success' => false,
            'message' => $user->get_error_code()
        );
        return new WP_REST_Response($results, 401, ['Content-Type' => 'application/json']);
    }


    do_action('wp_login', $user->ID);
    wp_set_current_user($user->ID);
    wp_set_auth_cookie($user->ID, true);

    $results['status'] = array(
        'user' =>$user->$_COOKIE,
        'is_success' => is_user_logged_in($user->ID),
        'message' => 'login_success',
        'validateUser' => wp_validate_auth_cookie($_COOKIE[LOGGED_IN_COOKIE], 'logged_in') == 1
    );

    $results['auth_cookie'] = LOGGED_IN_COOKIE;

    return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
}

/**
 * Checks if the user is logged in by validating the auth cookie from the request.
 *
 * @since 1.0.0
 *
 * @param WP_REST_Request $request The request object containing the auth cookie.
 * @return WP_REST_Response The response object indicating the login status.
 */
function isLoggedIn($request) {
    $response = json_decode($request->get_body());


    if($_COOKIE[$response->auth_cookie]) {
        $results['status'] = array(
            'logged_in' => $_COOKIE[$response->auth_cookie],
            'is_success' => true,
            'message' => "user_logged_in",
        );
        return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
    }

    $results['status'] = array(
        'is_success' => false,
        'message' => "not_logged_in"
    );
    return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
}



/**
 * Logs out a user by removing the auth cookie from the request.
 *
 * @since 1.0.0
 *
 * @param WP_REST_Request $request The request object containing the auth cookie to be removed.
 * @return WP_REST_Response The response object indicating the logout status.
 */
function logoutUser($request) {
    $response = json_decode($request->get_body());
    $results = array();    

    if ($_COOKIE[$response->auth_cookie]) {
        $_COOKIE[$response->auth_cookie] = null;
        setcookie($response->auth_cookie, '', 1, "/");
        unset($_COOKIE[$response->auth_cookie]);
        $results['status'] = array(
            'is_success' => true,
            'message' => 'logged_out'
        );
        return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
    }

    $results['status'] = array(
        'is_success' => false,
        'message' => 'user_not_logged_in'
    );

    return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
} 