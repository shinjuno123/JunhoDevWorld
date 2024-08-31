<?php

require get_theme_file_path('/inc/writing.route.php');
require get_theme_file_path('/inc/note.route.php');


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