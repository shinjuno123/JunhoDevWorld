<?php

namespace Enable\Cors;

/*
|--------------------------------------------------------------------------
| If this file is called directly, abort.
|--------------------------------------------------------------------------
*/
if ( ! defined( 'Enable\Cors\SLUG' ) ) {
	exit;
}

use Enable\Cors\Helpers\Headers;
use Enable\Cors\Helpers\Htaccess;
use Enable\Cors\Helpers\Option;


final class Plugin {


	/**
	 * It will load during activation
	 *
	 * @return void
	 */
	public static function activate() {
		// enable plugin's auto-update.
		self::enable_updates();
		// set default option.
		Option::add_default();
		// modify htaccess.
		Htaccess::instance()->modify();
		// redirect you to the settings page after activation.
		add_action( 'activated_plugin', array( self::class, 'redirect' ) );
	}

	/**
	 * Enable plugin's auto-update on activation.
	 *
	 * @return void
	 */
	private static function enable_updates() {
		$auto_updates = (array) get_site_option( 'auto_update_plugins', array() );
		$plugin       = plugin_basename( FILE );
		if ( false === in_array( $plugin, $auto_updates, true ) ) {
			$auto_updates[] = $plugin;
			update_site_option( 'auto_update_plugins', $auto_updates );
		}
	}

	/**
	 * It will load during deactivation
	 *
	 * @return void
	 */
	public static function deactivate() {
		self::disable_updates();
		Htaccess::instance()->restore();
		Option::delete();
	}

	/**
	 * Disable auto-update deactivation or uninstall
	 *
	 * @return void
	 */
	private static function disable_updates() {
		$auto_updates = (array) get_site_option( 'auto_update_plugins', array() );
		$plugin       = plugin_basename( FILE );
		$update       = array_diff( $auto_updates, array( $plugin ) );
		update_site_option( 'auto_update_plugins', $update );
	}

	/**
	 * It redirects to the admin page if the plugin is enabled.
	 *
	 * @param string $plugin activated plugin name.
	 */
	public static function redirect( string $plugin ) {
		if ( plugin_basename( FILE ) === $plugin ) {
			wp_safe_redirect( admin_url( 'admin.php?page=' . SLUG ) );
			exit();
		}
	}

	/**
	 * Plugin Initiator.
	 *
	 * @return void
	 */
	public static function init() {
		// get option.
		if ( is_admin() ) {
			// add links under plugin name.
			add_filter( 'plugin_action_links_' . plugin_basename( FILE ), array( self::class, 'actions' ) );
			// Register admin page.
			AdminPage::instance();
		}
		add_action(
			'rest_api_init',
			function () {
				// add settings api.
				SettingsApi::instance();
			}
		);
		$option = new Option();

		if ( ! $option->is_enable() || ! $option->is_method_allowed() ) {
			return;
		}

		Headers::add( $option );
		add_action(
			'rest_api_init',
			function () {
				remove_filter( 'rest_pre_serve_request', 'rest_send_cors_headers' );
				add_filter(
					'rest_pre_serve_request',
					function ( $value ) {
						Headers::add( new Option() );

						return $value;
					}
				);
			}
		);
	}

	/**
	 * This PHP function adds a "Settings" link to an array of actions.
	 *
	 * @param array $actions collections.
	 *
	 * @return array
	 */
	public static function actions( array $actions ): array {
		$actions[] = sprintf(
			'<a href="%s">%s</a>',
			esc_url( get_admin_url( null, 'admin.php?page=enable-cors' ) ),
			esc_attr__( 'Settings', 'enable-cors' )
		);

		return $actions;
	}
}
