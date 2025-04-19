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
define('DB_NAME', 'complexa_wrd');

/** MySQL database username */
define('DB_USER', 'complexa_wrd');

/** MySQL database password */
define('DB_PASSWORD', 'nIY59!z6');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'GL4pSwOzjRBrL^|zuwH/~<wPUSNpX5DN0pu44zcI!{W`{?nUpdX,Z;~WF=J1fb[a');
define('SECURE_AUTH_KEY',  '[RiOspv$1_[6$eW9 2xbPYk; =)[vaG_M=;=mC>j_gTs}<_.K3nveN/Gc!~4eQKF');
define('LOGGED_IN_KEY',    '_mE-Uf-dI+rJN6nI<hk>.v:~`fN&?/DSQ`/O>D|_2P;V6S(@mxl=)~uYnEUbT!4z');
define('NONCE_KEY',        '^]YR5QL)}[45ZyRJf_Nqj+Af5Y+Zy@<2[LNljt[Z_n30o/`Li/:}hLsq?{Dcw6a%');
define('AUTH_SALT',        'Rm2Pl@:7/A.GN*6{,=F.=CmaoPL!A.ah7t{]1>9_kQ+agEEs&ej@RNsR+UK[I9#U');
define('SECURE_AUTH_SALT', '[,Lw#H%^ Kg8$iI28uNZW[n+#OQ~8_ V`x,<SO]!q8?9HM4``jLk#T2:~=`WNn`2');
define('LOGGED_IN_SALT',   'mjJw=,@-9p_E0>W5q{p/BpH%ma+6(=R>]+vi.`LW-6e1;fiq3qoqSgw$kU}{k}|p');
define('NONCE_SALT',       'HG)_kh>KmhL}h/Dwc:h~Tnr:R|!m rm3uva=O[h>sO>wkjy:~/@$r{*_hM60C1dE');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

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
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
