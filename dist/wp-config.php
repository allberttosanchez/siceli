<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'siceli_wp' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'S3-PH}3E]>vjp1c.J<j,:$%.b]8I@p1P}V#8}<#O[)XPw0+Xu5SnfTc~TO6S+;QR' );
define( 'SECURE_AUTH_KEY',  ')^YWxBehONFA3~Y.cT,EuR<.ac_FeWrT-?/4GO7Jq#Q*Q^Ji@XHfHtJrL7r )q!`' );
define( 'LOGGED_IN_KEY',    '_N&|d,=;b~l.@zB:n)5s@RZ0EIJ;f*T#Z`w1hf}S0;CAIo$4W8~p4]nXmu5vA~zF' );
define( 'NONCE_KEY',        'zzT:,=z,#,S46ar`-Q<hzDu79]4-lvK6XSbCX/+aLs=pooLYG2CbQxDn?@]wXh8y' );
define( 'AUTH_SALT',        'CGFW$JZ6?$46gQ2_o$5:ooJree6M&6L`>)#YUu1R$hlAUag8c3ORV]Jo;6Q&8cG|' );
define( 'SECURE_AUTH_SALT', 'PP+QmWh 90Zr+25vI)$!M{:S_b#-e@;OS1Jsknl$L=3S#uJJ9Ml.zKNGJh*,,l[K' );
define( 'LOGGED_IN_SALT',   'QC4>00%#AE>VK}L!ALrI$4|N<})Z6B{I=/2%lEuU8%gx:DlO,*!+2Bnj@C K4T[Z' );
define( 'NONCE_SALT',       'Bb;~(2U)ad?(Z0CQCJ8$r!L,dr?a:h12fYy}Kt_sYFy?[]!/jY3Uf<Uth*oK9`Oh' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'sclwp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
