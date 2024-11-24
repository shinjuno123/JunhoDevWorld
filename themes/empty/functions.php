<?php

require get_theme_file_path('/inc/writing.route.php');
require get_theme_file_path('/inc/note.route.php');
require get_theme_file_path('/inc/project.route.php');
require get_theme_file_path('/inc/skill.route.php');
require get_theme_file_path('/inc/admin.route.php');
require get_theme_file_path('/inc/wplogin.route.php');
require get_theme_file_path('/inc/oauth.route.php');
require get_theme_file_path('/inc/email.route.php');

// Hook.
add_action('rest_api_init', 'wp_rest_allow_all_cors', 15);

/**
 * Allow all CORS by modifying HTTP headers for REST API requests.
 *
 * This function removes the default CORS headers filter and adds a custom filter 
 * to allow cross-origin requests from any domain. It's useful for development 
 * environments or situations where cross-domain requests are necessary.
 *
 * @since 1.0.0
 */
function wp_rest_allow_all_cors()
{
    // Remove the default CORS headers filter provided by WordPress.
    remove_filter('rest_pre_serve_request', 'rest_send_cors_headers');

    // Add a custom filter to set CORS headers.
    add_filter('rest_pre_serve_request', function ($value) {
        // Allow requests from any origin.
        header('Access-Control-Allow-Origin: *');

        // Specify the allowed HTTP methods.
        header('Access-Control-Allow-Methods: POST, GET, OPTIONS, PUT, DELETE');

        // Indicate that cookies and credentials are allowed in requests.
        header('Access-Control-Allow-Credentials: true');

        // Allow all headers in requests.
        header('Access-Control-Allow-Headers: *');

        // Return the original value to continue processing the request.
        return $value;
    });
}


// Restrict basic wp rest api routes
add_filter('rest_endpoints', function ($endpoints) {

    foreach ($endpoints as $route => $endpoint) {
        if (0 === stripos($route, '/wp/') and 1 === stripos($route, '/wp-admin/')) {
            unset($endpoints[$route]);
        }
    }

    return $endpoints;
});


add_action('set_auth_cookie', function ($cookie) {
    $cookie_name = is_ssl() ? SECURE_AUTH_COOKIE : AUTH_COOKIE;
    $_COOKIE[$cookie_name] = $cookie;
});

add_action('set_logged_in_cookie', function ($cookie) {
    $_COOKIE[LOGGED_IN_COOKIE] = $cookie;
});

