<?php //phpcs:ignore

namespace Enable\Cors\Helpers;

/*
|--------------------------------------------------------------------------
| If this file is called directly, abort.
|--------------------------------------------------------------------------
*/

if ( ! defined( 'Enable\Cors\SLUG' ) ) {
	exit;
}

/**
 * Class Headers
 *
 * @package Enable\Cors
 */
final class Headers {

	/**
	 * Adds headers for Cross-Origin Resource Sharing (CORS) based on the options set.
	 *
	 * @param Option $option from DB.
	 *
	 * @return void
	 */
	public static function add( Option $option ) {
		if ( $option->is_current_origin_allowed() ) {
			header( 'Access-Control-Allow-Origin: ' . get_http_origin() );
			header( 'Very: Origin' );
		} elseif ( $option->has_wildcard() ) {
			header( 'Access-Control-Allow-Origin: *' );
		} else {
			return;
		}
		if ( $option->has_methods() ) {
			header( 'Access-Control-Allow-Methods: ' . implode( ', ', $option->get_allowed_methods() ) );
		}
		if ( $option->has_header() ) {
			header( 'Access-Control-Allow-Headers: ' . implode( ', ', $option->get_allowed_header() ) );
		}
		if ( $option->should_allow_credentials() ) {
			header( 'Access-Control-Allow-Credentials: true' );
		} else {
			header( 'Access-Control-Allow-Credentials: false' );
		}
	}
}
