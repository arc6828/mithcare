<?php
/**
 * Custom functions that act independently of the theme templates.
 *
 * Eventually, some of the functionality here could be replaced by core features.
 *
 * @package Medical_Way
 */

/**
 * Adds custom classes to the array of body classes.
 *
 * @param array $classes Classes for the body element.
 * @return array
 */
function medical_way_body_classes( $classes ) {

	// Adds a class of group-blog to blogs with more than 1 published author.
	if ( is_multi_author() ) {
		$classes[] = 'group-blog';
	}

	// Adds a class of hfeed to non-singular pages.
	if ( ! is_singular() ) {
		$classes[] = 'hfeed';
	}

	// Add class for global layout.
	$global_layout = medical_way_get_option( 'global_layout' );
	$global_layout = apply_filters( 'medical_way_filter_theme_global_layout', $global_layout );
	$classes[] = 'global-layout-' . esc_attr( $global_layout );

	return $classes;
}
add_filter( 'body_class', 'medical_way_body_classes' );

/**
 * Add a pingback url auto-discovery header for singularly identifiable articles.
 */
function medical_way_pingback_header() {
	if ( is_singular() && pings_open() ) {
		echo '<link rel="pingback" href="', bloginfo( 'pingback_url' ), '">';
	}
}
add_action( 'wp_head', 'medical_way_pingback_header' );

if ( ! function_exists( 'medical_way_footer_goto_top' ) ) :

	/**
	 * Add Go to top.
	 *
	 * @since 1.0.0
	 */
	function medical_way_footer_goto_top() {
		echo '<a href="#page" class="scrollup" id="btn-scrollup"><i class="fa fa-angle-up"></i></a>';
	}
endif;
add_action( 'wp_footer', 'medical_way_footer_goto_top' );

if ( ! function_exists( 'medical_way_implement_excerpt_length' ) ) :

	/**
	 * Implement excerpt length.
	 *
	 * @since 1.0.0
	 *
	 * @param int $length The number of words.
	 * @return int Excerpt length.
	 */
	function medical_way_implement_excerpt_length( $length ) {

		$excerpt_length = medical_way_get_option( 'excerpt_length' );
		if ( absint( $excerpt_length ) > 0 ) {
			$length = absint( $excerpt_length );
		}
		return $length;

	}
endif;

if ( ! function_exists( 'medical_way_content_more_link' ) ) :

	/**
	 * Implement read more in content.
	 *
	 * @since 1.0.0
	 *
	 * @param string $more_link Read More link element.
	 * @param string $more_link_text Read More text.
	 * @return string Link.
	 */
	function medical_way_content_more_link( $more_link, $more_link_text ) {

		$read_more_text = medical_way_get_option( 'read_more_text' );
		if ( ! empty( $read_more_text ) ) {
			$more_link = str_replace( $more_link_text, $read_more_text, $more_link );
		}
		return $more_link;

	}

endif;

if ( ! function_exists( 'medical_way_implement_read_more' ) ) :

	/**
	 * Implement read more in excerpt.
	 *
	 * @since 1.0.0
	 *
	 * @param string $more The string shown within the more link.
	 * @return string The excerpt.
	 */
	function medical_way_implement_read_more( $more ) {
		$output = $more;
		$read_more_text = medical_way_get_option( 'read_more_text' );
		if ( ! empty( $read_more_text ) ) {
			$output = '&hellip;';
		}
		return $output;

	}
endif;

if ( ! function_exists( 'medical_way_hook_read_more_filters' ) ) :

	/**
	 * Hook read more and excerpt length filters.
	 *
	 * @since 1.0.0
	 */
	function medical_way_hook_read_more_filters() {
		if ( is_home() || is_category() || is_tag() || is_author() || is_date() || is_search() ) {

			add_filter( 'excerpt_length', 'medical_way_implement_excerpt_length', 999 );
			add_filter( 'the_content_more_link', 'medical_way_content_more_link', 10, 2 );
			add_filter( 'excerpt_more', 'medical_way_implement_read_more' );

		}
	}
endif;
add_action( 'wp', 'medical_way_hook_read_more_filters' );

if ( ! function_exists( 'medical_way_add_sidebar' ) ) :

	/**
	 * Add sidebar.
	 *
	 * @since 1.0.0
	 */
	function medical_way_add_sidebar() {

		$global_layout = medical_way_get_option( 'global_layout' );
		$global_layout = apply_filters( 'medical_way_filter_theme_global_layout', $global_layout );

		// Include sidebar.
		if ( 'no-sidebar' !== $global_layout ) {
			get_sidebar();
		}

	}
endif;
add_action( 'medical_way_action_sidebar', 'medical_way_add_sidebar' );

//=============================================================
// Required plugin installer
//=============================================================

function medical_way_register_required_plugins() {
	
	$plugins = array(

		array(
			'name'      => esc_html__( 'One Click Demo Import', 'medical-way-plus' ),
			'slug'      => 'one-click-demo-import',
			'required'  => false,
		),

		array(
			'name'      => esc_html__( 'Contact Form 7', 'medical-way-plus' ),
			'slug'      => 'contact-form-7',
			'required'  => false,
		),

	);

	tgmpa( $plugins );
}

add_action( 'tgmpa_register', 'medical_way_register_required_plugins' );

//=============================================================
// Change number of product per row
//=============================================================

if (!function_exists('medical_way_product_columns')) {

	function medical_way_product_columns() {

		return 3; // 3 products per row

	}
	
}

add_filter('loop_shop_columns', 'medical_way_product_columns');

//=============================================================
// Change number of related product
//=============================================================

if (!function_exists('medical_way_related_products_args')) {

	function medical_way_related_products_args( $args ) {
		
		$args['posts_per_page'] = 3; // 3 related products
		
		return $args;
	}

}

add_filter( 'woocommerce_output_related_products_args', 'medical_way_related_products_args' );


//=============================================================
// Change number of upsell products
//=============================================================

remove_action( 'woocommerce_after_single_product_summary', 'woocommerce_upsell_display', 15 );

add_action( 'woocommerce_after_single_product_summary', 'medical_way_output_upsells', 15 );

if ( ! function_exists( 'medical_way_output_upsells' ) ) {

	function medical_way_output_upsells() {

	    woocommerce_upsell_display( 3, 3 ); // Display 3 products in rows of 3
	    
	}

}

//=============================================================
// EDD license and updates
//=============================================================
function medical_way_theme_updater() {

	require get_template_directory() . '/includes/updater/theme-updater.php';

}

add_action( 'after_setup_theme', 'medical_way_theme_updater' );