<?php
/**
 * Easy Digital Downloads Theme Updater
 *
 * @package EDD Sample Theme
 */

// Includes the files needed for the theme updater
if ( !class_exists( 'EDD_Theme_Updater_Admin' ) ) {
	require  dirname( __FILE__ ) . '/theme-updater-admin.php';
}

// Loads the updater classes
$updater = new EDD_Theme_Updater_Admin(

	// Config settings
	$config = array(
		'remote_api_url' => 'https://www.prodesigns.com/wordpress-themes/', // Site where EDD is hosted
		'item_name'      => 'Medical Way Plus', // Name of theme
		'theme_slug'     => 'medical-way-plus', // Theme slug
		'version'        => '1.1.2', // The current version of this theme
		'author'         => 'ProDesigns', // The author of this theme
		'download_id'    => '', // Optional, used for generating a license renewal link
		'renew_url'      => 'https://www.prodesigns.com/wordpress-themes/my-account/', // Optional, allows for a custom license renewal link
		'beta'           => false, // Optional, set to true to opt into beta versions
	),

	// Strings
	$strings = array(
		'theme-license'             => __( 'Theme License', 'medical-way-plus' ),
		'enter-key'                 => __( 'Enter your theme license key.', 'medical-way-plus' ),
		'license-key'               => __( 'License Key', 'medical-way-plus' ),
		'license-action'            => __( 'License Action', 'medical-way-plus' ),
		'deactivate-license'        => __( 'Deactivate License', 'medical-way-plus' ),
		'activate-license'          => __( 'Activate License', 'medical-way-plus' ),
		'status-unknown'            => __( 'License status is unknown.', 'medical-way-plus' ),
		'renew'                     => __( 'Renew?', 'medical-way-plus' ),
		'unlimited'                 => __( 'unlimited', 'medical-way-plus' ),
		'license-key-is-active'     => __( 'License key is active.', 'medical-way-plus' ),
		'expires%s'                 => __( 'Expires %s.', 'medical-way-plus' ),
		'expires-never'             => __( 'Lifetime License.', 'medical-way-plus' ),
		'%1$s/%2$-sites'            => __( 'You have %1$s / %2$s sites activated.', 'medical-way-plus' ),
		'license-key-expired-%s'    => __( 'License key expired %s.', 'medical-way-plus' ),
		'license-key-expired'       => __( 'License key has expired.', 'medical-way-plus' ),
		'license-keys-do-not-match' => __( 'License keys do not match.', 'medical-way-plus' ),
		'license-is-inactive'       => __( 'License is inactive.', 'medical-way-plus' ),
		'license-key-is-disabled'   => __( 'License key is disabled.', 'medical-way-plus' ),
		'site-is-inactive'          => __( 'Site is inactive.', 'medical-way-plus' ),
		'license-status-unknown'    => __( 'License status is unknown.', 'medical-way-plus' ),
		'update-notice'             => __( "Updating this theme will lose any customizations you have made. 'Cancel' to stop, 'OK' to update.", 'medical-way-plus' ),
		'update-available'          => __('<strong>%1$s %2$s</strong> is available. <a href="%3$s" class="thickbox" title="%4s">Check out what\'s new</a> or <a href="%5$s"%6$s>update now</a>.', 'medical-way-plus' ),
	)

);
