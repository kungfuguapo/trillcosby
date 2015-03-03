<?php
# Database Configuration
define( 'DB_NAME', 'wp_trillcosby' );
define( 'DB_USER', 'trillcosby' );
define( 'DB_PASSWORD', 'o7GRyIMc1KmYgV2jbYjo' );
define( 'DB_HOST', '127.0.0.1' );
define( 'DB_HOST_SLAVE', '127.0.0.1' );
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', 'utf8_unicode_ci');
$table_prefix = 'wp_';

# Security Salts, Keys, Etc
define('AUTH_KEY',         ' `]^Ifv:1,L/DPxcRSGuOen-{aJX()9(mQF#Gr.RQk<fqcm>xo!.EBp`WBg.fGv:');
define('SECURE_AUTH_KEY',  'u ?DyB*aXPA|o&gfbU |,k=A5wp@n!Jp:1vox;cW/(?t5vb@HY`.i|SoJ?31/H;E');
define('LOGGED_IN_KEY',    'd|8[5?kg3tA.0LQd)s-1oy-2,fo4O&q|Awqx$OAwdEPa?(W9EXtK7oizTPLefw}<');
define('NONCE_KEY',        ')T4MZ!)G8Q6 nrr;<ijhfR[nN~,ZTgRnJN1/Xlr;bM$,!`)3=ShqMN1Y6WaDzH7y');
define('AUTH_SALT',        '_<Gg$y?Ey=-ET|9R<Dg~:ED=5):f>n2+2}X[^C.+k$(@${Zlhn}9T0DT8az2oSG3');
define('SECURE_AUTH_SALT', 'ZYI;%$r;3f(az2=eI&UmEJzE-z>8ybdBg5>7ptx-cE T2-D6TKBRYP!}apAHnS|H');
define('LOGGED_IN_SALT',   'X7Rzq=Os^Ik&eVh,kA[O4AO+Z^tS?8bPMBmzfb%UJ3fTEO2$`e^_jB+?_l`YF~cQ');
define('NONCE_SALT',       '@#M4F_Aw-x4ySuW:iDJvn1jKH;K/&Jy;/8[F~4t}Ym2%TMnR *0KXX=NNcglXayn');


# Localized Language Stuff

define( 'WP_CACHE', TRUE );

define( 'WP_AUTO_UPDATE_CORE', false );

define( 'PWP_NAME', 'trillcosby' );

define( 'FS_METHOD', 'direct' );

define( 'FS_CHMOD_DIR', 0775 );

define( 'FS_CHMOD_FILE', 0664 );

define( 'PWP_ROOT_DIR', '/nas/wp' );

define( 'WPE_APIKEY', '86aba1f07efc07f3d3c321347876d465c3a2f020' );

define( 'WPE_FOOTER_HTML', "" );

define( 'WPE_CLUSTER_ID', '30006' );

define( 'WPE_CLUSTER_TYPE', 'pod' );

define( 'WPE_ISP', true );

define( 'WPE_BPOD', false );

define( 'WPE_RO_FILESYSTEM', false );

define( 'WPE_LARGEFS_BUCKET', 'largefs.wpengine' );

define( 'WPE_LBMASTER_IP', '104.130.236.75' );

define( 'WPE_CDN_DISABLE_ALLOWED', true );

define( 'DISALLOW_FILE_EDIT', FALSE );

define( 'DISALLOW_FILE_MODS', FALSE );

define( 'DISABLE_WP_CRON', false );

define( 'WPE_FORCE_SSL_LOGIN', false );

define( 'FORCE_SSL_LOGIN', false );

/*SSLSTART*/ if ( isset($_SERVER['HTTP_X_WPE_SSL']) && $_SERVER['HTTP_X_WPE_SSL'] ) $_SERVER['HTTPS'] = 'on'; /*SSLEND*/

define( 'WPE_EXTERNAL_URL', false );

define( 'WP_POST_REVISIONS', FALSE );

define( 'WPE_WHITELABEL', 'wpengine' );

define( 'WP_TURN_OFF_ADMIN_BAR', false );

define( 'WPE_BETA_TESTER', false );

umask(0002);

$wpe_cdn_uris=array ( );

$wpe_no_cdn_uris=array ( );

$wpe_content_regexs=array ( );

$wpe_all_domains=array ( 0 => 'trillcosby.ninja', 1 => 'trillcosby.wpengine.com', );

$wpe_varnish_servers=array ( 0 => 'pod-30006', );

$wpe_special_ips=array ( 0 => '104.130.173.114', );

$wpe_ec_servers=array ( );

$wpe_largefs=array ( );

$wpe_netdna_domains=array ( );

$wpe_netdna_domains_secure=array ( );

$wpe_netdna_push_domains=array ( );

$wpe_domain_mappings=array ( );

$memcached_servers=array ( );

define( 'WPE_SFTP_PORT', 2222 );
define('WPLANG','');

# WP Engine ID


define('PWP_DOMAIN_CONFIG', 'trillcosby.wpengine.com' );

# WP Engine Settings






# That's It. Pencils down
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');
require_once(ABSPATH . 'wp-settings.php');

$_wpe_preamble_path = null; if(false){}
