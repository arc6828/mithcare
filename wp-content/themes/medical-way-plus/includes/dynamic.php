<?php
/**
 * Medical Way Theme Dynamic CSS.
 *
 * @package Medical_Way
 */

if ( ! function_exists( 'medical_way_dynamic_options' ) ) :

    function medical_way_dynamic_options(){

    $primary_color 	=  medical_way_get_option( 'primary_color' );

    $button_color 	=  medical_way_get_option( 'button_color' );

    $button_hover   =  medical_way_get_option( 'button_hover' );

    $menu_hover     =  medical_way_get_option( 'menu_hover' );

    $font_name      =  medical_way_get_option( 'font_name' );

    if( empty( $font_name ) ){

        $font_name = 'Asap';

    }
?>               
    <style>   
    	h1, h2, h3, h4, h5, h6,     
        a, a:visited, a:hover, a:focus, a:active,
        .main-navigation ul li a:hover,
        .entry-meta > span::before,
        .entry-footer > span::before,
        .single-post-meta > span::before,
        .site-title > a,
        #home-page-widget-area .medical_way_widget_social ul li a::before,
        #home-page-widget-area .widget-title,
        .medical_way_widget_services .services-info-title,
        .services-item-title,
        .medical_way_widget_call_to_action .call-to-action-content h3,
        .medical_way_widget_call_to_action .call-to-action-content p strong,
        .medical_way_widget_departments .department-info-title,
        .department-item-title,
        .medical_way_widget_testimonial .testimonial-top h3,
        .medical_way_widget_testimonial #testimonials-slider .testimonials-wrap .testimonials-meta strong,
        .medical_way_widget_latest_news .latest-news-title > a,
        #home-page-widget-area .medical_way_widget_contact .widget-title,
        .medical_way_widget_contact .contact-wrapper form label,
        .contact-right p,
        .medical_way_widget_contact .contact-right ul li h6,
        .medical_way_widget_contact .contact-right ul li h5,
        .medical_way_widget_contact .contact-right ul li h4,
        .medical_way_widget_contact .contact-right ul li i,
        .medical_way_widget_contact .contact-right ul li a,
        .medical_way_widget_team .team-top-info h3,
        .medical_way_widget_team .team-member-wrap .memeber-details h3,
        .medical_way_widget_team .team-member-wrap  .memeber-details h2,
        .woocommerce ul.products li.product .price,
        .woocommerce-message::before, 
        .woocommerce-info::before,
        .mean-container a.meanmenu-reveal{
            color: <?php echo esc_attr( $primary_color ); ?>;
        }

        #add_payment_method .wc-proceed-to-checkout a.checkout-button:hover, 
        .woocommerce-cart .wc-proceed-to-checkout a.checkout-button:hover, 
        .woocommerce-checkout .wc-proceed-to-checkout a.checkout-button:hover, 
        .woocommerce .cart .button:hover, 
        .woocommerce .cart input.button:hover, 
        .woocommerce a.button:hover, 
        .woocommerce #payment #place_order:hover, 
        .woocommerce-page #payment #place_order:hover, 
        .woocommerce #review_form #respond .form-submit input:hover{
            color: <?php echo esc_attr( $primary_color ); ?>!important;
        }

		button,
		.comment-reply-link,
		a.button, input[type="button"],
		input[type="reset"],
		input[type="submit"],
		.comment-navigation .nav-previous,
		.posts-navigation .nav-previous,
		.post-navigation .nav-previous,
		.comment-navigation .nav-next,
		.posts-navigation .nav-next,
		.post-navigation .nav-next,
		#infinite-handle span,
		.comment-navigation .nav-previous:hover,
		.posts-navigation .nav-previous:hover,
		.post-navigation .nav-previous:hover,
		.comment-navigation .nav-next:hover,
		.posts-navigation .nav-next:hover,
		.post-navigation .nav-next:hover,
		 #infinite-handle span:hover,
		 .search-box > a,
		 .widget_calendar caption,
		 .bg_enabled.medical_way_widget_facts,
		 .medical_way_widget_features,
		 a.read-more,
		 .medical_way_widget_team .our-team-text-wrap,
         .woocommerce span.onsale,
         .mean-container a.meanmenu-reveal span,
         .mean-container .mean-nav ul li a {
            background: <?php echo esc_attr( $primary_color ); ?> none repeat scroll 0 0;
        }

        button:hover,
        .comment-reply-link,
        a.button:hover,
        input[type="button"]:hover,
        input[type="reset"]:hover,
        input[type="submit"]:hover,
        .search-box > a:hover,
        #footer-widgets h3.widget-title::after,
        .scrollup:hover,
        #home-page-widget-area .bg_enabled.medical_way_widget_contact .widget-title span::before,
        #home-page-widget-area .bg_enabled.medical_way_widget_contact .widget-title span::after,
        #mobile-trigger i,
        .woocommerce div.product .woocommerce-tabs ul.tabs li{
            background-color: <?php echo esc_attr( $primary_color ); ?>;
        } 

        .nav-links .page-numbers.current,.nav-links a.page-numbers:hover,
        #add_payment_method .wc-proceed-to-checkout a.checkout-button, 
        .woocommerce-cart .wc-proceed-to-checkout a.checkout-button, 
        .woocommerce-checkout .wc-proceed-to-checkout a.checkout-button, 
        .woocommerce .cart .button, 
        .woocommerce .cart input.button, 
        .woocommerce a.button, 
        .woocommerce #payment #place_order, 
        .woocommerce-page #payment #place_order, 
        .woocommerce #respond input#submit.alt, 
        .woocommerce a.button.alt, 
        .woocommerce button.button.alt, 
        .woocommerce input.button.alt, 
        .woocommerce #review_form #respond .form-submit input {
            background: <?php echo esc_attr( $primary_color ); ?> none repeat scroll 0 0;
            border-color: <?php echo esc_attr( $primary_color ); ?>;
        }

        #home-page-widget-area .medical_way_widget_social li a,
        #primary .sticky .content-wrap.content-no-image,
        #primary .sticky .content-wrap.content-with-image,
        .woocommerce div.product .woocommerce-tabs ul.tabs li {
            border: 1px solid <?php echo esc_attr( $primary_color ); ?>;
        } 

        #footer-widgets {
            border-top: 4px solid <?php echo esc_attr( $primary_color ); ?>;
        }

        .woocommerce div.product .woocommerce-tabs ul.tabs::before {
            border-bottom: 1px solid <?php echo esc_attr( $primary_color ); ?>;
        }  

        .bg_enabled.medical_way_widget_contact .contact-wrapper form input[type="submit"]:hover{
            border-color: <?php echo esc_attr( $primary_color ); ?>;
        }  

        .woocommerce-message, .woocommerce-info {
            border-top-color: <?php echo esc_attr( $primary_color ); ?>;
        } 

        #sidebar-primary .widget .widget-title:after,
        #primary .page .entry-title:after,
        #primary .page-header .page-title:after{
            border-left: 80px solid <?php echo esc_attr( $primary_color ); ?>;
        }

        .single-wrap .single-inner-content {
            border-top: 5px solid <?php echo esc_attr( $primary_color ); ?>;
        }

        blockquote{
            border-left: 5px solid <?php echo esc_attr( $primary_color ); ?>;
        }

        #sidebar-primary.sidebar a {
            color: #121212;
        }

        .slider-cta a,
        .call-to-action-buttons a.cta-button,
        .medical_way_widget_latest_news .latest-news-item a.cta-button,
        .medical_way_widget_contact .contact-wrapper form input[type="submit"],
        .bg_enabled.medical_way_widget_contact .contact-wrapper form input[type="submit"] {
            background: <?php echo esc_attr( $button_color ); ?>;
        }

        .scrollup,
        .medical_way_widget_services form input[type="submit"],
        #main-slider .cycle-prev, 
        #main-slider .cycle-next,
        .medical_way_widget_testimonial #testimonials-slider .cycle-prev, 
        .medical_way_widget_testimonial #testimonials-slider .cycle-next{
            background-color: <?php echo esc_attr( $button_color ); ?>;
        }

        .medical_way_widget_team .team-member-wrap  .memeber-details strong {
            color: <?php echo esc_attr( $button_color ); ?>;
        }

        .slider-cta a,
        .call-to-action-buttons a.cta-button,
        .medical_way_widget_latest_news .latest-news-item a.cta-button,
        .medical_way_widget_contact .contact-wrapper form input[type="submit"],
        .bg_enabled.medical_way_widget_contact .contact-wrapper form input[type="submit"],
        .medical_way_widget_services form input[type="submit"] {
            border-bottom: 2px solid <?php echo esc_attr( $button_hover ); ?>;
        }

        .slider-cta a:hover,
        .call-to-action-buttons a.cta-button:hover,
        .slider-cta a:hover,
        .medical_way_widget_latest_news .latest-news-item a.cta-button:hover,
        .bg_enabled .call-to-action-buttons a.cta-button:hover,
        .bg_enabled.medical_way_widget_contact .contact-wrapper form input[type="submit"]:hover {
            background: <?php echo esc_attr( $button_hover ); ?>;
        }

        .medical_way_widget_services form input[type="submit"]:hover,
        .medical_way_widget_contact .contact-wrapper form input[type="submit"]:hover,
        #main-slider .pager-box.cycle-pager-active,
        .medical_way_widget_testimonial #testimonials-slider .pager-box.cycle-pager-active {
            background-color: <?php echo esc_attr( $button_hover ); ?>;
        }

        #main-slider .cycle-prev:hover, 
        #main-slider .cycle-next:hover,
        .medical_way_widget_testimonial #testimonials-slider .cycle-prev:hover, 
        .medical_way_widget_testimonial #testimonials-slider .cycle-next:hover {
            background-color: <?php echo esc_attr( $button_hover ); ?>;
            border-color: <?php echo esc_attr( $button_hover ); ?>;
        }

        .woocommerce div.product p.price, 
        .woocommerce div.product span.price, 
        .woocommerce div.product .woocommerce-tabs ul.tabs li.active a{
            color: <?php echo esc_attr( $primary_color ); ?>;
        }

        @media screen and (max-width: 1050px){

            .mean-container .mean-nav ul li a:hover,
            .mean-container .mean-nav ul li a.mean-expand,
            .mean-container .mean-nav ul li a.mean-expand.mean-clicked, 
            .mean-container .mean-nav ul li a.mean-expand.mean-clicked:hover, 
            .mean-container .mean-nav ul li a.mean-expand:hover {
                background: <?php echo esc_attr( $menu_hover ); ?>;
            }

        }

        /*For font family*/
        body,
        h1, h2, h3, h4, h5, h6,
        .site-title,
        #main-slider .item .caption h3 {            
            font-family: '<?php echo esc_html( $font_name ); ?>', sans-serif;
        }

    </style>

<?php }

endif;

add_action( 'wp_head', 'medical_way_dynamic_options' );