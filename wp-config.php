<?php
define( 'WP_CACHE', true );
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
 
// SMTP settings for sending emails
// wsbiyhwcrttzksqc
define('SMTP_HOST', 'smtp.gmail.com');
define('SMTP_PORT', 587);
define('SMTP_MY_PASSWORD', 'wsbi yhwc rttz ksqc');
define('SMTP_MY_EMAIL', 'shinjuno123@gmail.com');
define('SMTP_MY_NAME', 'Junho Shin');
define('SMTP_LABEL', 'JunhoDevWorld');
define('SMTP_DEBUG', true);

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
define( 'AUTH_KEY',          '(a+M<Dx-wz8Gb9)HV-O^ z, c=5Rq@kYo|G3(sWEWAHA1Bz$=X?[Q$a76$;EjJ@}' );
define( 'SECURE_AUTH_KEY',   'T&qcjnaCV92LOSSEFpO9e<|D^W{|H4^9ce7SV)-CDvjt|ro+;$J?sU g,#%*EBLe' );
define( 'LOGGED_IN_KEY',     'Q|a~|0~;lD)9 & 4X[O^Fb@DgWm<iF]M_H>foeMZ}5/Mru+xv^CKS-:@a,idGV_<' );
define( 'NONCE_KEY',         '8`?FBjgt*MW4L=EL-DydP--z!o<,12mj^@/3I/`[rJ9_D%mKmH=CCYWRQhp55()P' );
define( 'AUTH_SALT',         '=y;|l|u^h}}62CWu 0f&,W7z4=JxUaOLV/h[o_;0M<-1vSL }r}PXI2]f7RCOgzZ' );
define( 'SECURE_AUTH_SALT',  '1_&crY;^<$AWyrh|r]|LJk=OyII]6(_ P,15qKa)D[j7zfXtIPNrXmCIAm}Of7:`' );
define( 'LOGGED_IN_SALT',    '8`vrkJ~Mma+JRfqZ@Uh NsiD<*Bm`;Y7*1z{b,5sBCYe~jq$.Q-S*Waz nLc!x0x' );
define( 'NONCE_SALT',        'zI}o3yV`(YG|Ts6T;Q$TH&2EK1^8*O<]~HzlW2o<_yPvg{qY>*%7;aHzcH[gZ%W/' );
define( 'WP_CACHE_KEY_SALT', '_xxZ&F7gT?AM!en7E: c]-}hcud8yHWxJn$gCG!W-Cc<dpd_[_R:mN}d13-BzS$r' );


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

define( 'FS_METHOD', 'direct' );
define( 'COOKIEHASH', 'ac27614ff936ac77c0c8c0e0037f67e0' );
define( 'WP_AUTO_UPDATE_CORE', 'minor' );
define( 'WP_DEBUG_LOG', false );
define( 'WP_DEBUG_DISPLAY', false );
define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
