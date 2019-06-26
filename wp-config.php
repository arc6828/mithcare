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
define( 'DB_NAME', 'mithcare' );

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
define( 'AUTH_KEY',         'q*o2MZT}WUedgOd<% uL7b*dOG,a`@:!/I}m13;py ur^3z0dT4RE/<9 bTp_4d;' );
define( 'SECURE_AUTH_KEY',  'ZD!(q^[{si$|a7Ofu}8xCEy[tRcw[=IZTuEFOts;FoaT6v$ral+:u>K|o14Fq[Of' );
define( 'LOGGED_IN_KEY',    '>vvRl-dV2]Vz@,OY?Uk/6?@:2$MEl(/ym)u`LM?/U<|UH+Pid_U/i3e(UINEcm(k' );
define( 'NONCE_KEY',        'Tk{/X*m/a@EI_8%)D^XGjn+%g1c@}=qJ@Qp<)|r8%k~lwZFN$JwXV*>N-l;Zv?PR' );
define( 'AUTH_SALT',        ') I)Qr`Cu9/Dp7O>GY<mH6^x+&mIU9EMc[A+p}R^<A?xi|@!npO@J+,6y;7bcJ8s' );
define( 'SECURE_AUTH_SALT', 'm^B4DuT8E`Ufb8Zta9y$^VLEiE!)k&N*g_])E+[++e,1&z0Da6xVs,sPSdkiN$4G' );
define( 'LOGGED_IN_SALT',   'AM0Oo2%fImRm5 80MT2TB$tGM*7`mZd{6jk^*{=0}K?Ob#bn*Xc]TW;Rc?~,NJI)' );
define( 'NONCE_SALT',       'N|Q$E42x(X}G6woy2/NO*9mRf]|~,-F2^IVRSbtPP16rU(+GeFq%e9u?89VEU*k ' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
