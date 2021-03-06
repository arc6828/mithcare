<?php
/**
 * Core functions.
 *
 * @package Medical_Way
 */

if ( ! function_exists( 'medical_way_get_option' ) ) :

	/**
	 * Get theme option.
	 *
	 * @since 1.0.0
	 *
	 * @param string $key Option key.
	 * @return mixed Option value.
	 */
	function medical_way_get_option( $key ) {

		if ( empty( $key ) ) {
			return;
		}

		$value = '';

		$default = medical_way_get_default_theme_options();
		$default_value = null;
		if ( is_array( $default ) && isset( $default[ $key ] ) ) {
			$default_value = $default[ $key ];
		}

		if ( null !== $default_value ) {
			$value = get_theme_mod( $key, $default_value );
		}
		else {
			$value = get_theme_mod( $key );
		}

		return $value;

	}
endif;

if ( ! function_exists( 'medical_way_get_default_theme_options' ) ) :

	/**
	 * Get default theme options.
	 *
	 * @since 1.0.0
	 *
	 * @return array Default theme options.
	 */
	function medical_way_get_default_theme_options() {

		$defaults = array();

		$defaults['primary_color']   	= '#2fa3ad';
		$defaults['button_color']   	= '#f1703d';
		$defaults['button_hover']   	= '#DC5520';
		$defaults['menu_hover']   	    = '#0c737c';
		
		// Header.
		$defaults['show_title']   		= true;
		$defaults['show_tagline'] 		= true;
		$defaults['top_address']  		= '';
		$defaults['top_phone'] 	  		= '';
		$defaults['top_fax'] 	  		= '';
		$defaults['show_social_icons']  = true;
		
		// Layout.
		$defaults['global_layout']  = 'right-sidebar';

		// Footer.
		$defaults['copyright_text'] = esc_html__( 'Copyright &copy; All rights reserved.', 'medical-way-plus' );
		$defaults['powerby_text'] 	= esc_html__( 'Medical Way Plus by', 'medical-way-plus' ) . ' <a target="_blank" rel="designer" href="https://www.prodesigns.com/wordpress-themes/">ProDesigns</a>';


		// Blog.
		$defaults['excerpt_length'] = 40;
		$defaults['read_more_text'] = esc_html__( 'Read more', 'medical-way-plus' );
		$defaults['posted_date'] 	= false;
		$defaults['post_author'] 	= false;
		$defaults['post_category'] 	= false;
		$defaults['post_tag'] 		= false;
		$defaults['post_comment'] 	= false;

		// Breadcrumb.
		$defaults['breadcrumb_type'] 			= 'simple';
		$defaults['breadcrumb_overlay_status']  = true;


		// team, services, departments.
		$defaults['member_link'] 			= true;
		$defaults['services_link'] 			= true;
		$defaults['services_excerpt'] 		= 200;
		$defaults['departments_link'] 		= true;
		$defaults['departments_excerpt'] 	= 200;

		// Slider.
		$defaults['slider_status']            = 'disable';
		$defaults['slider_excerpt_length']    = 20;
		$defaults['slider_transition_effect'] = 'fadeout';
		$defaults['slider_transition_delay']  = 3;
		$defaults['slider_transition_duration']  = 3;
		$defaults['slider_caption_status']    = true;
		$defaults['slider_arrow_status']      = true;
		$defaults['slider_pager_status']      = true;
		$defaults['slider_autoplay_status']   = true;
		$defaults['slider_overlay_status']    = true;

		// Fonts.
		$defaults['font_name']            	= 'Asap';
		$defaults['font_family']    		= 'Asap:400,400i,500,500i,700,700i';
                $defaults['enable_sticky']              = false;
		return $defaults;
	}
endif;
