<?php

require get_theme_file_path('/inc/writing.route.php');
require get_theme_file_path('/inc/note.route.php');
require get_theme_file_path('/inc/project.route.php');
require get_theme_file_path('/inc/skill.route.php');
require get_theme_file_path('/inc/admin.route.php');
require get_theme_file_path('/inc/wplogin.route.php');
require get_theme_file_path('/inc/oauth.route.php');


// Hook.
add_action( 'rest_api_init', 'wp_rest_allow_all_cors', 15 );

/**
 * Allow all CORS.
 *
 * @since 1.0.0
 */
function wp_rest_allow_all_cors() {
    // Remove the default filter.
    remove_filter( 'rest_pre_serve_request', 'rest_send_cors_headers' );

    // Add a Custom filter.
    add_filter( 'rest_pre_serve_request', function( $value ) {
        header( 'Access-Control-Allow-Origin: *' );
        header( 'Access-Control-Allow-Methods: POST, GET, OPTIONS, PUT, DELETE' );
        header( 'Access-Control-Allow-Credentials: true' );
        header( 'Access-Control-Allow-Headers: *' );
        return $value;
    });
}


// Restrict basic wp rest api routes
add_filter('rest_endpoints', function( $endpoints ) {

    foreach( $endpoints as $route => $endpoint ){
        if( 0 === stripos( $route, '/wp/') AND  1 === stripos( $route, '/wp-admin/')){
            unset( $endpoints[ $route ] );
        }
    }

    return $endpoints;
});


add_action('set_auth_cookie', function($cookie) {
    $cookie_name = is_ssl()? SECURE_AUTH_COOKIE: AUTH_COOKIE;
    $_COOKIE[$cookie_name] = $cookie;
});

add_action('set_logged_in_cookie', function($cookie) {
    $_COOKIE[LOGGED_IN_COOKIE] = $cookie;
});