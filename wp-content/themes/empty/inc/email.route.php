<?php
add_action('rest_api_init', 'emailRoutes');


add_action('phpmailer_init', 'send_smtp_email');
/**
 * Sets up SMTP configuration for sending emails.
 *
 * @param PHPMailer $phpmailer The PHPMailer instance.
 */
function send_smtp_email($phpmailer)
{
    $phpmailer->SMTPOptions = array(
        'ssl' => array(
            'verify_peer' => false,
            'verify_peer_name' => false,
            'allow_self_signed' => true
        )
    );
    $phpmailer->isSMTP();
    $phpmailer->Host = SMTP_HOST;
    $phpmailer->Port = SMTP_PORT;
    $phpmailer->SMTPSecure = 'tls';
    $phpmailer->SMTPAuth = true;
    $phpmailer->Username = SMTP_MY_EMAIL;
    $phpmailer->Password = SMTP_MY_PASSWORD;
    $phpmailer->From = SMTP_MY_EMAIL;
    $phpmailer->FromName = SMTP_MY_NAME;

    return $phpmailer;
}

/**
 * Registers REST API routes for sending emails.
 *
 * This function sets up the routes for sending an email using the WordPress REST API.
 * It registers one route under the 'email/v1' namespace: '/send-email'.
 *
 * @since 1.0.0
 */
function emailRoutes()
{
    $base_route = 'email/v1';
    $slug = '/send-email';

    register_rest_route(
        $base_route,
        $slug,
        array(
            'methods' => WP_REST_SERVER::CREATABLE,
            'callback' => 'sendEmail'
        )
    );
}


/**
 * Handles sending an email using the WordPress REST API.
 *
 * The endpoint for sending an email is {@see 'email/v1/send-email'}.
 *
 * The function takes in an email address, name, and message as parameters.
 * It configures the SMTP settings using environment variables, and then
 * sends the email using the PHPMailer library.
 *
 * @since 1.0.0
 *
 * @param WP_REST_Request $request The request object.
 *
 * @return WP_REST_Response The response to the request.
 */
function sendEmail(WP_REST_Request $request)
{
    $to = $request->get_param('email');
    $recipient_name = $request->get_param('name');
    $message_from_user = $request->get_param('message');
    $message = '
        <h3 style="margin-bottom:.2rem;margin-top:.2rem">This is the email from <strong style="color:blue;">' . $recipient_name . '</strong>' . '</h3>' .
        '<h3>The user email is <strong style="color:blue;">' . $to . '</strong></h3>' .
        '<h4 style="color:red;font-size: 17px"">Message from user:</h4>' . 
        '<p style="font-weight: bold;font-size: 15px">' .
        $message_from_user;
        '</p>';
    $is_sent = wp_mail('shinjuno123@gmail.com', 'A message from '.$recipient_name, $message, array('Content-Type: text/html; charset=UTF-8'));

    return new WP_REST_Response(array(
        'status' => $is_sent ? 'success' : 'failed'
    ), $is_sent ? 200 : 503);
}