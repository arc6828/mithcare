<?php
/**
 * About configuration
 *
 * @package Medical_Way
 */

$config = array(
	'menu_name' => esc_html__( 'About Medical Way Plus', 'medical-way-plus' ),
	'page_name' => esc_html__( 'About Medical Way Plus', 'medical-way-plus' ),

	/* translators: theme version */
	'welcome_title' => sprintf( esc_html__( 'Welcome to %s - ', 'medical-way-plus' ), 'Medical Way Plus' ),

	/* translators: 1: theme name */
	'welcome_content' => sprintf( esc_html__( 'We hope this page will help you to setup %1$s with few clicks. We believe you will find it easy to use and perfect for your website development.', 'medical-way-plus' ), 'Medical Way Plus' ),

	// Quick links.
	'quick_links' => array(
		'theme_url' => array(
			'text' => esc_html__( 'Theme Details','medical-way-plus' ),
			'url'  => 'https://www.prodesigns.com/wordpress-themes/downloads/medical-way-plus/',
			),
		'demo_url' => array(
			'text' => esc_html__( 'View Demo','medical-way-plus' ),
			'url'  => 'https://www.prodesigns.com/wordpress-themes/demo/medical-way-plus/',
			),
		'documentation_url' => array(
			'text'   => esc_html__( 'View Documentation','medical-way-plus' ),
			'url'    => 'https://www.prodesigns.com/wordpress-themes/documentation/medical-way-plus/',
			'button' => 'primary',
			),
		'rate_url' => array(
			'text' => esc_html__( 'Rate This Theme','medical-way-plus' ),
			'url'  => 'https://wordpress.org/support/theme/medical-way/reviews/',
			),
		),

	// Tabs.
	'tabs' => array(
		'getting_started'     => esc_html__( 'Getting Started', 'medical-way-plus' ),
		'recommended_actions' => esc_html__( 'Recommended Actions', 'medical-way-plus' ),
		'support'             => esc_html__( 'Support', 'medical-way-plus' ),
	),

	// Getting started.
	'getting_started' => array(
		array(
			'title'               => esc_html__( 'Theme Documentation', 'medical-way-plus' ),
			'text'                => esc_html__( 'Find step by step instructions with video documentation to setup theme easily.', 'medical-way-plus' ),
			'button_label'        => esc_html__( 'View documentation', 'medical-way-plus' ),
			'button_link'         => 'https://www.prodesigns.com/wordpress-themes/documentation/medical-way-plus/',
			'is_button'           => false,
			'recommended_actions' => false,
			'is_new_tab'          => true,
		),
		array(
			'title'               => esc_html__( 'Recommended Actions', 'medical-way-plus' ),
			'text'                => esc_html__( 'We recommend few steps to take so that you can get complete site like shown in demo.', 'medical-way-plus' ),
			'button_label'        => esc_html__( 'Check recommended actions', 'medical-way-plus' ),
			'button_link'         => esc_url( admin_url( 'themes.php?page=medical-way-plus-about&tab=recommended_actions' ) ),
			'is_button'           => false,
			'recommended_actions' => false,
			'is_new_tab'          => false,
		),
		array(
			'title'               => esc_html__( 'Customize Everything', 'medical-way-plus' ),
			'text'                => esc_html__( 'Start customizing every aspect of the website with customizer.', 'medical-way-plus' ),
			'button_label'        => esc_html__( 'Go to Customizer', 'medical-way-plus' ),
			'button_link'         => esc_url( wp_customize_url() ),
			'is_button'           => true,
			'recommended_actions' => false,
			'is_new_tab'          => false,
		),
	),

	// Recommended actions.
	'recommended_actions' => array(
		'content' => array(
			
			'front-page' => array(
				'title'       => esc_html__( 'Setting Static Front Page','medical-way-plus' ),
				'description' => esc_html__( 'Create a new page to display on front page ( Ex: Home ) and assign "Home" template. Select A static page then Front page and Posts page to display front page specific sections. Note: Static page will be set automatically when you import demo content.', 'medical-way-plus' ),
				'id'          => 'front-page',
				'check'       => ( 'page' === get_option( 'show_on_front' ) ) ? true : false,
				'help'        => '<a href="' . esc_url( wp_customize_url() ) . '?autofocus[section]=static_front_page" class="button button-secondary">' . esc_html__( 'Static Front Page', 'medical-way-plus' ) . '</a>',
			),

			'one-click-demo-import' => array(
				'title'       => esc_html__( 'One Click Demo Import', 'medical-way-plus' ),
				'description' => esc_html__( 'Please install the One Click Demo Import plugin to import the demo content. After activation go to Appearance >> Import Demo Data and import it.', 'medical-way-plus' ),
				'check'       => class_exists( 'OCDI_Plugin' ),
				'plugin_slug' => 'one-click-demo-import',
				'id'          => 'one-click-demo-import',
			),
		),
	),

	// Support.
	'support_content' => array(
		'first' => array(
			'title'        => esc_html__( 'Contact Support', 'medical-way-plus' ),
			'icon'         => 'dashicons dashicons-sos',
			'text'         => esc_html__( 'If you have any problem, feel free to create ticket on our dedicated Support forum.', 'medical-way-plus' ),
			'button_label' => esc_html__( 'Contact Support', 'medical-way-plus' ),
			'button_link'  => esc_url( 'https://www.prodesigns.com/wordpress-themes/support/item/medical-way-plus/' ),
			'is_button'    => true,
			'is_new_tab'   => true,
		),
		'second' => array(
			'title'        => esc_html__( 'Theme Documentation', 'medical-way-plus' ),
			'icon'         => 'dashicons dashicons-book-alt',
			'text'         => esc_html__( 'Kindly check our theme documentation for detailed information and video instructions.', 'medical-way-plus' ),
			'button_label' => esc_html__( 'View Documentation', 'medical-way-plus' ),
			'button_link'  => 'https://www.prodesigns.com/wordpress-themes/documentation/medical-way-plus/',
			'is_button'    => false,
			'is_new_tab'   => true,
		),
		'third' => array(
			'title'        => esc_html__( 'Customization Request', 'medical-way-plus' ),
			'icon'         => 'dashicons dashicons-admin-tools',
			'text'         => esc_html__( 'We have dedicated team members for theme customization. Feel free to contact us any time if you need any customization service.', 'medical-way-plus' ),
			'button_label' => esc_html__( 'Customization Request', 'medical-way-plus' ),
			'button_link'  => 'https://www.prodesigns.com/wordpress-themes/contact-us/',
			'is_button'    => false,
			'is_new_tab'   => true,
		),
		'fourth' => array(),
		'fifth'  => array(),
		'sixth'  => array(),
	),

);
Medical_Way_About::init( apply_filters( 'medical_way_about_filter', $config ) );
