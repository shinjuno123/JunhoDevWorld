<?php //phpcs:ignore

namespace Enable\Cors;

/*
|--------------------------------------------------------------------------
| If this file is called directly, abort.
|--------------------------------------------------------------------------
*/
if ( ! defined( 'Enable\Cors\SLUG' ) ) {
	exit;
}

use Enable\Cors\Helpers\Htaccess;
use Enable\Cors\Helpers\Option;
use Enable\Cors\Traits\Api;
use Enable\Cors\Traits\Singleton;
use WP_Error;
use WP_REST_Request;
use WP_REST_Response;
use WP_REST_Server;


final class SettingsApi {
	use Singleton;
	use Api;

	/**
	 * Settings object.
	 *
	 * @var Option
	 */
	private $option;

	/**
	 * Initialize settings API
	 */
	private function __construct() {
		register_rest_route(
			$this->namespace,
			'/settings',
			array(
				array(
					'methods'             => WP_REST_Server::READABLE,
					'callback'            => array( $this, 'get' ),
					'permission_callback' => array( $this, 'permissions_check' ),
					'args'                => array(),
				),
				array(
					'methods'             => WP_REST_Server::CREATABLE,
					'callback'            => array( $this, 'set' ),
					'permission_callback' => array( $this, 'permissions_check' ),
					'args'                => array(),
				),
			)
		);

		$this->option = new Option();
	}

	/**
	 * Update settings data in database
	 *
	 * @param WP_REST_Request $request Request object.
	 *
	 * @return WP_REST_Response|WP_Error
	 */
	public function set( WP_REST_Request $request ) {
		$json_params = $request->get_json_params();
		$saved       = $this->option->save( $json_params );
		if ( is_wp_error( $saved ) ) {
			$this->response['message'] = $saved->get_error_message();
			$this->response['success'] = false;
		} else {
			Htaccess::instance()->modify();
			wp_cache_flush();
			$this->response['message'] = __( 'Settings Updated!', 'enable-cors' );
			$this->response['success'] = true;
		}
		$this->response['data'] = $this->option->get();

		return rest_ensure_response( $this->response );
	}

	/**
	 * Get settings data from database
	 *
	 * @return WP_REST_Response|WP_Error
	 */
	public function get() {
		$this->response['data'] = $this->option->get();

		$this->response['success'] = true;

		return rest_ensure_response( $this->response );
	}
}
