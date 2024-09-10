<?php //phpcs:ignore

namespace Enable\Cors\Helpers;

/*
|--------------------------------------------------------------------------
| If this file is called directly, abort.
|--------------------------------------------------------------------------
*/

use Enable\Cors\Traits\Singleton;
use WP_Error;
use const Enable\Cors\SLUG;
use const Enable\Cors\VERSION;

if ( ! defined( 'Enable\Cors\SLUG' ) ) {
	exit;
}


/**
 * Handle plugin option.
 *
 * @property array $options
 * @property boolean $enable
 * @property array $allowedHeader
 * @property array $allowedMethods
 * @property array $allowedFor
 * @property boolean $allowCredentials
 * @property boolean $allowImage
 * @property boolean $allowFont
 */
final class Option {

	use Singleton;

	/**
	 * Plugin option key.
	 *
	 * @var string
	 */
	private const KEY = SLUG . '-options';
	/**
	 * Default options for the API.
	 *
	 * @var array
	 */
	private const DEFAULT_OPTION = array(
		'enable'           => false,
		'allowFont'        => false,
		'allowImage'       => false,
		'allowCredentials' => false,
		'allowedFor'       => array( array( 'value' => '*' ) ),
		'allowedMethods'   => array( 'GET', 'POST', 'OPTIONS' ),
		'allowedHeader'    => array(),
	);
	/**
	 * List of allowed HTTP methods.
	 *
	 * @var array
	 */
	private const METHODS = array(
		'GET',
		'POST',
		'OPTIONS',
		'PUT',
		'DELETE',
	);
	/**
	 * List of allowed headers.
	 *
	 * @var array
	 */
	private const HEADERS = array(
		'Accept',
		'Authorization',
		'Content-Type',
		'Origin',
	);
	/**
	 * An array of allowed keys.
	 *
	 * @var array
	 */
	private const ALLOWED = array(
		'enable',
		'allowFont',
		'allowImage',
		'allowCredentials',
		'allowedFor',
		'allowedMethods',
		'allowedHeader',
	);
	const VKEY            = SLUG . '_version';

	/**
	 * Set up options and set defaults.
	 */
	public function __construct() {
		$options = get_option( self::KEY, self::DEFAULT_OPTION );
		if ( array_key_exists( 'allowedFor', $options ) && gettype( $options['allowedFor'] ) === 'string' ) {
			$options['allowedFor'] = array(
				array( 'value' => $options['allowedFor'] ),
			);
			$this->save( $options );
		}
		$this->set_option( $options );
		$this->options = $options;
	}

	/**
	 * Save options
	 *
	 * @param array $options from request.
	 *
	 * @return bool|WP_Error
	 */
	public function save( array $options ) {
		$validated = $this->validate( $options );

		if ( empty( $validated ) ) {
			return new WP_Error(
				'invalid',
				__( 'Invalid Settings!', 'enable-cors' )
			);
		}

		return update_option( self::KEY, $validated );
	}

	/**
	 * Verify data before saving
	 *
	 * @param array $get_json_params from request.
	 *
	 * @return array of verified data
	 */
	private function validate( array $get_json_params ): array {
		$data = $this->extract( $get_json_params, self::ALLOWED );

		array_walk(
			$data,
			function ( &$value, $key ) {
				switch ( $key ) {
					case 'allowedFor':
						if ( 'array' !== gettype( $value ) || empty( $value ) || in_array( '*', array_column( $value, 'value' ), true ) ) {
							$value = self::DEFAULT_OPTION['allowedFor'];
						}
						$value = array_map( array( $this, 'prepend_value' ), $value );
						break;
					case 'allowedMethods':
						if ( 'array' !== gettype( $value ) ) {
							$value = self::DEFAULT_OPTION['allowedMethods'];
						}
						$value = array_map( 'sanitize_text_field', array_filter( array_intersect( $value, self::METHODS ) ) );
						break;
					case 'allowedHeader':
						if ( 'array' !== gettype( $value ) ) {
							$value = self::DEFAULT_OPTION['allowedHeader'];
						}
						$value = array_map( 'sanitize_text_field', array_filter( array_intersect( $value, self::HEADERS ) ) );
						break;
					default:
						$value = sanitize_text_field( $value );
						$value = boolval( $value );
						break;
				}
			}
		);

		return $data;
	}

	/**
	 * Extract data from array
	 *
	 * @param array $collection of data.
	 * @param array $keys to extract.
	 *
	 * @return array of extracted data
	 */
	private function extract( array $collection, array $keys ): array {

		return array_intersect_key( $collection, array_flip( $keys ) );
	}

	/**
	 * Set options
	 *
	 * @param array $options from request.
	 *
	 * @return void
	 */
	private function set_option( array $options ): void {
		$this->enable           = array_key_exists( 'enable', $options ) ? $options['enable'] : self::DEFAULT_OPTION['enable'];
		$this->allowFont        = array_key_exists( 'allowFont', $options ) ? $options['allowFont'] : self::DEFAULT_OPTION['allowFont'];
		$this->allowImage       = array_key_exists( 'allowImage', $options ) ? $options['allowImage'] : self::DEFAULT_OPTION['allowImage'];
		$this->allowCredentials = array_key_exists( 'allowCredentials', $options ) ? $options['allowCredentials'] : self::DEFAULT_OPTION['allowCredentials'];
		$this->allowedFor       = array_key_exists( 'allowedFor', $options ) ? $options['allowedFor'] : self::DEFAULT_OPTION['allowedFor'];
		$this->allowedMethods   = array_key_exists( 'allowedMethods', $options ) ? $options['allowedMethods'] : self::DEFAULT_OPTION['allowedMethods'];
		$this->allowedHeader    = array_key_exists( 'allowedHeader', $options ) ? $options['allowedHeader'] : self::DEFAULT_OPTION['allowedHeader'];
	}

	/**
	 * Should allow image for cors?
	 *
	 * @return bool
	 */
	public function should_allow_image(): bool {
		return $this->allowImage;
	}

	/**
	 * Should allow font for cors?
	 *
	 * @return bool
	 */
	public function should_allow_font(): bool {
		return $this->allowFont;
	}

	/**
	 * Adds a default option.
	 *
	 * @return void
	 */
	public static function add_default() {
		add_option( self::KEY, self::DEFAULT_OPTION );
		add_option( self::VKEY, VERSION );
	}

	/**
	 * Delete options
	 *
	 * @return void
	 */
	public static function delete() {
		delete_option( self::KEY );
		delete_option( self::VKEY );
	}

	/**
	 * Gets the options array.
	 *
	 * @return array The options array.
	 */
	public function get(): array {
		return get_option( self::KEY, self::DEFAULT_OPTION );
	}

	/**
	 * Determines if the cors is enabled.
	 *
	 * @return bool The cors enable status.
	 */
	public function is_enable(): bool {
		return $this->enable;
	}

	/**
	 * Retrieves the allowed header.
	 *
	 * @return array The allowed header.
	 */
	public function get_allowed_header(): array {
		return $this->allowedHeader;
	}

	/**
	 * Retrieves the allowed methods.
	 *
	 * @return array The list of allowed methods.
	 */
	public function get_allowed_methods(): array {
		return $this->allowedMethods;
	}

	/**
	 * Checks if credentials are allowed.
	 *
	 * @return bool
	 */
	public function should_allow_credentials(): bool {
		return $this->allowCredentials;
	}

	/**
	 * Checks whether the current origin is allowed.
	 *
	 * @return bool Returns true if the current origin is allowed, false otherwise.
	 */
	public function is_current_origin_allowed(): bool {
		$websites = array_column( $this->allowedFor, 'value' );

		return in_array( rtrim( get_http_origin(), '/' ), $websites );
	}

	/**
	 * Checks if the current request is a Cross-Origin Resource Sharing (CORS) request.
	 *
	 * @return bool Returns true if the request is a CORS request, false otherwise.
	 */
	public function is_cors_request(): bool {
		$origin = get_http_origin();

		if ( empty( $origin ) ) {
			return false;
		}

		$origin_host = wp_parse_url( $origin, PHP_URL_HOST );
		$host        = sanitize_url( wp_unslash( $_SERVER['HTTP_HOST'] ?? '' ) );

		if ( $origin_host === $host ) {
			return false;
		}

		return true;
	}

	/**
	 * Check if the method is allowed.
	 *
	 * @return bool
	 */
	public function has_methods(): bool {
		return gettype( $this->allowedMethods ) === 'array' && ! empty( $this->allowedMethods );
	}

	/**
	 * Checks if the object has a header.
	 *
	 * @return bool Returns true if the object has a header, false otherwise.
	 */
	public function has_header(): bool {
		return gettype( $this->allowedHeader ) === 'array' && ! empty( $this->allowedHeader );
	}

	/**
	 * Check if the method is allowed.
	 *
	 * @return bool Returns true if the method is allowed, false otherwise.
	 */
	public function is_method_allowed(): bool {
		$method = sanitize_text_field( wp_unslash( $_SERVER['REQUEST_METHOD'] ?? '' ) ) ?? false;

		return in_array( $method, $this->allowedMethods, true );
	}

	/**
	 * Checks if the array of allowed websites contains a wildcard value.
	 *
	 * @return bool
	 */
	public function has_wildcard(): bool {
		$websites = array_column( $this->allowedFor, 'value' );

		return 1 === count( $websites ) && in_array( '*', $websites );
	}

	/**
	 * Retrieves an array of domains from the 'allowedFor' property by parsing the 'value' field of each website.
	 *
	 * @return array An array of domains extracted from the 'value' field of each website in the 'allowedFor' property.
	 */
	public function get_domains(): array {
		return array_map(
			function ( $website ) {
				return wp_parse_url( $website['value'], PHP_URL_HOST );
			},
			$this->allowedFor
		);
	}

	/**
	 * Get the list of allowed websites for this function.
	 *
	 * @return array The list of allowed websites.
	 */
	public function get_allowed_for(): array {
		return $this->allowedFor;
	}

	/**
	 * Prepend value to url
	 *
	 * @param array $url from allowedFor.
	 *
	 * @return array of formatted url
	 */
	private function prepend_value( array $url ): array {
		if ( ! array_key_exists( 'value', $url ) ) {
			return $url;
		}
		if ( '*' === $url['value'] ) {
			return $url;
		}
		$url['value'] = sanitize_url( rtrim( $url['value'], '/' ) );

		return $url;
	}
}
