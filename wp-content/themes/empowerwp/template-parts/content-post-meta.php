<?php
if ( ! apply_filters( 'mesmerize_show_post_meta', true ) ) {
	return;
}

?>
<div class="post-meta">
    <span class="meta-label"><?php esc_html_e( 'by', 'empowerwp' ); ?></span>
	<?php the_author_posts_link(); ?>
    <span class="meta-label"><?php esc_html_e( 'on', 'empowerwp' ); ?></span>
    <span class="meta-content"> <?php the_category( ' ', ' ' ); ?></span>
    <span class="meta-label">-</span>
    <span class="span12"><?php the_time( get_option( 'date_format' ) ); ?></span>
</div>
