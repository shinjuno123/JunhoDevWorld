<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          '.LQ>d5%fn(.-9$@Am8ax[Rq5W&4xLhQ<EvkD<H?:INL^~AH/*e6[OmcQfl[KgU~T' );
define( 'SECURE_AUTH_KEY',   '4}-%ExX[U/S-Cp-@B!!|aEx0y)47NZN%W>1y=R<.9Ufl%oPjhqe9??ow!hZM=c 2' );
define( 'LOGGED_IN_KEY',     'RJ-y4 *QsTi`.`M>B>7LE46AI6}Dq&,?7O_W7NIVr4ekdDxG(wlgp2cpL4E49`]2' );
define( 'NONCE_KEY',         '%Bn8akE:w|u4{+shDc1Qg4gR_~B0Yz.$Bug`W) =%Y0BDwONvfZwUpUY*I8eD_E ' );
define( 'AUTH_SALT',         'I|KhVj^ fJcQ<T7I3Pv-@:Fy{=D/>~Cb/gX7J2C,sl*t6 qcdyM>SWn,ds7{:z ?' );
define( 'SECURE_AUTH_SALT',  'q5]hjU%g]?56/vkx. IXoez[M35_bZv65AOVDU30;hVaYt^Z11W$Z42%g%`=4wVl' );
define( 'LOGGED_IN_SALT',    'b_q,fT$FfQp-&EQzxl#zJiKKF*<:g=x>n/,m~R2n~ Cz,(r`2X5FbF;JiRK-.lHB' );
define( 'NONCE_SALT',        'Q:xi!,!Z9G(T|rw;^%JSx%*i6X.B6JT>|7FF2Aa<3`)m,0>H_PhlvCum|Y&P2Sc1' );
define( 'WP_CACHE_KEY_SALT', 'V=BOWT1vJT<.-FZYDhXuB{JUpUCWaY48$k`kh)kd=b 2vetB0d ts##R, b7:Aq3' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
