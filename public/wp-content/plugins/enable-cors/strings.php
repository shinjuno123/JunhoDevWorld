<?php //phpcs:ignore
/*
|--------------------------------------------------------------------------
| If this file is called directly, abort.
|--------------------------------------------------------------------------
*/
if ( ! defined( 'Enable\Cors\SLUG' ) ) {
	exit;
}


return array(
	'name'        => esc_attr__( 'Enable CORS', 'enable-cors' ),
	'description' => esc_attr__( 'Enable Cross-Origin Resource Sharing for any or specific origin.', 'enable-cors' ),
	'form'        => array(
		'inputs'     => array(
			'enable'  => array(
				'label' => esc_attr__( 'Enable CORS', 'enable-cors' ),
				'hint'  => esc_attr__(
					'Configure the server to include CORS headers in the response to allow cross-origin requests.',
					'enable-cors'
				),
			),
			'website' => array(
				'label' => esc_attr__( 'Allowed Websites', 'enable-cors' ),
				'hint'  => esc_attr__(
					'Specify the specific website (e.g., https://devkabir.github.io/) that is allowed to make requests.',
					'enable-cors'
				),
			),
			'method'  => array(
				'label' => esc_attr__( 'Allowed Request Methods', 'enable-cors' ),
				'hint'  => esc_attr__(
					'Specify the allowed HTTP methods (e.g., GET,POST,OPTIONS) for cross-origin requests.',
					'enable-cors'
				),
			),
			'header'  => array(
				'label' => esc_attr__( 'Set Response Headers', 'enable-cors' ),
				'hint'  => esc_attr__(
					'Set the desired response headers (e.g., Content-Type,Authorization) to be included in the response for other websites.',
					'enable-cors'
				),
			),
			'cred'    => array(
				'label' => esc_attr__( 'Allow Credentials', 'enable-cors' ),
				'hint'  => esc_attr__(
					'Configure the server to allow credentials (such as cookies or authorization headers) to be included in the cross-origin request.',
					'enable-cors'
				),
			),
			'font'    => array(
				'label' => esc_attr__( 'Allow Fonts Sharing', 'enable-cors' ),
				'hint'  => esc_attr__(
					'Configure the server to share fonts (such as ttf or font.css) to be included in the cross-origin request.',
					'enable-cors'
				),
			),
			'image'   => array(
				'label' => esc_attr__( 'Allow Images Sharing', 'enable-cors' ),
				'hint'  => esc_attr__(
					'Configure the server to share Images (such as svg or webp) to be included in the cross-origin request.',
					'enable-cors'
				),
			),
		),
		'save'       => esc_attr__( 'Save', 'enable-cors' ),
		'reset'      => esc_attr__( 'Reset', 'enable-cors' ),
		'cache'      => esc_attr__( 'Facing issues? Clear Cache', 'enable-cors' ),
		'add'        => esc_attr__( 'Add Website', 'enable-cors' ),
		'remove'     => esc_attr__( 'Remove', 'enable-cors' ),
		'wait'       => esc_attr__( 'Please wait...', 'enable-cors' ),
		'wildcard'   => esc_attr__( '* represents a wildcard. Only a single wildcard is allowed.', 'enable-cors' ),
		'wildOrigin' => esc_attr__( 'You can use either wildcard or specific origins. Both are not allowed.', 'enable-cors' ),
		'invalidUrl' => esc_attr__( 'Are all URLs valid? Please verify.', 'enable-cors' ),
	),
	'thanks'      => array(
		'title'       => esc_attr__( 'Thank You', 'enable-cors' ),
		'description' => [
			'bug'     => esc_attr__( 'Bug fix contributors', 'enable-cors' ),
			'feature' => esc_attr__( 'Feature request contributors', 'enable-cors' )
		],
		'peoples'     => array(
			'bug'     => [
				'mehbubrashid' => array(
					'name'  => esc_attr__( 'Mehbub Rashid', 'enable-cors' ),
					'image' => esc_attr( '7a692106063b5b14dfe8962e83a738f0' ),
					'link'  => esc_attr( 'error-404-while-saving-the-settings' ),
				),
				'oyvindwe'     => array(
					'name'  => esc_attr__( 'oyvindwe', 'enable-cors' ),
					'image' => esc_attr( '56c12316332438bb3dc6435cbe03da02' ),
					'link'  => esc_attr( 'wrong-value-for-access-control-allow-credentials/' ),
				),
			],
			'feature' => [
				'kocevskiigorw' => array(
					'name'  => esc_attr__( 'kocevskiigorw', 'enable-cors' ),
					'image' => esc_attr( 'f27a92b58dd8e8c810eac8a384d55731' ),
					'link'  => esc_attr( 'additional-allowed-websites/' ),
				),
			]
		),

	),
	'sponsors'    => array(
		'title'       => esc_attr__( 'Sponsors', 'enable-cors' ),
		'description' => esc_attr__( 'Investors in new features', 'enable-cors' ),
		'peoples'     => array(
			'philip' => array(
				'name'    => esc_attr__( 'Philip Schöttler', 'enable-cors' ),
				'image'   => esc_attr( '267094f8008173f94e5e5d3e9b912cb5' ),
				'profile' => esc_attr( 'philipschoettler' ),
			),
		),

	),
	'notices'     => array(
		'title'       => esc_attr__( 'Announcements', 'enable-cors' ),
		'description' => esc_attr__( 'Updates from support system.', 'enable-cors' ),
		'endpoint'    => array(
			'title'       => esc_attr__( 'Your API endpoint is', 'enable-cors' ),
			'description' => sprintf( '<a href="%s" target="_blank">%s</a>', esc_url_raw( get_rest_url() ), esc_url_raw( get_rest_url() ) ),
		),
		'review'      => array(
			'title'       => esc_attr__( 'Before posting your review', 'enable-cors' ),
			'description' => array(
				'title'         => esc_attr__( 'Please follow these steps,', 'enable-cors' ),
				'list'          => array(
					esc_attr__( 'Watch the video I have added on plugin description, and learn how this plugin works.', 'enable-cors' ),
					esc_attr__( 'Clear your cache after saving the settings.', 'enable-cors' ),
					sprintf( '%s <a href=%s target="_blank">%s</a>', esc_attr__( 'Test your settings', 'enable-cors' ), esc_url_raw( 'https://cors-test.codehappy.dev/' ), esc_attr__( 'here', 'enable-cors' ) ),
					sprintf( '%s <p><a href=%s target="_blank">%s</a></p>', esc_attr__( 'If the issue persists, start a new support thread on WordPress.org', 'enable-cors' ), esc_url_raw( 'https://wordpress.org/support/plugin/enable-cors/' ), esc_attr__( 'Create a new topic', 'enable-cors' ) ),
					esc_attr__( 'Still the issue persists? Share your thoughts and experiences via review.', 'enable-cors' ),
				),
				'happy'         => esc_attr__( 'Happy with the plugin?', 'enable-cors' ),
				'happy_message' => esc_attr__( 'Share your thoughts and experiences via review', 'enable-cors' ),
				'link'          => 'https://wordpress.org/support/plugin/enable-cors/reviews/',
				'link_text'     => esc_attr__( 'Write a review', 'enable-cors' ),
			),
		),
	),
	'validation'  => array(
		'website'  => array(
			'title'       => esc_attr__( 'Invalid Website', 'enable-cors' ),
			'description' => esc_attr__( 'Please enter valid website address. otherwise it may down your website', 'enable-cors' ),
			'type'        => 'warning',
		),
		'security' => array(
			'title'       => esc_attr__( 'Security Warning', 'enable-cors' ),
			'description' => sprintf( '<strong>*</strong> %s', esc_attr__( 'means that any website can send a request to your WordPress site and access the server\'s response. This can be a potential security risk.', 'enable-cors' ) ),
			'type'        => 'error',
		),
		'unsaved'  => array(
			'title'       => esc_attr__( 'Unsaved Settings', 'enable-cors' ),
			'description' => esc_attr__( 'To enable CORS on your site, please save settings.', 'enable-cors' ),
			'type'        => 'warning',
		),
	),
);
