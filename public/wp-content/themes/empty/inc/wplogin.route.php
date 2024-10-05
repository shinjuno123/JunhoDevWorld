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
        return new WP_REST_Response($results, 503, ['Content-Type' => 'application/json']);
    }


    do_action('wp_login', $user->ID);
    wp_set_current_user($user->ID);
    wp_set_auth_cookie($user->ID, true);

    $results['status'] = array(
        'user' =>$user->$_COOKIE,
        'is_success' => is_user_logged_in($user->ID),
        'message' => 'login_success',
        'auth_cookie' => LOGGED_IN_COOKIE,
        'validateUser' => wp_validate_auth_cookie($_COOKIE[LOGGED_IN_COOKIE], 'logged_in') == 1
    );

    return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
}

function isLoggedIn($request) {
    $response = json_decode($request->get_body());


    if($_COOKIE[$response->auth_cookie]) {
        $results['status'] = array(
            'logged_in' => $_COOKIE[$response->auth_cookie],
            'is_success' => true,
            'message' => "user_logged_in",
            'isset' => isset($_COOKIE[$response->auth_cookie])
        );
        return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
    }

    $results['status'] = array(
        'is_success' => false,
        'message' => "not_logged_in"
    );
    return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
}



function logoutUser($request) {
    $response = json_decode($request->get_body());
    $results = array();    

    if ($_COOKIE[$response->auth_cookie]) {
        $_COOKIE[$response->auth_cookie] = null;
        setcookie($response->auth_cookie, '', 1, "/");
        unset($_COOKIE[$response->auth_cookie]);
        $results['status'] = array(
            'is_success' => true,
            'message' => 'logged_out',
            'isset' => isset($_COOKIE[$response->auth_cookie])
        );
        return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
    }

    $results['status'] = array(
        'is_success' => false,
        'message' => 'user_not_logged_in'
    );

    return new WP_REST_Response($results, 200, ['Content-Type' => 'application/json']);
} 