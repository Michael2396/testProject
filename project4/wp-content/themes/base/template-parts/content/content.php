<div <?php post_class(); ?>>
	<div class="title">
		<?php the_title( '<h2><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' ); ?>
		<?php get_template_part( 'template-parts/published-info' ); ?>
	</div>
	<div class="content">
		<?php the_post_thumbnail( 'large' ); ?>
		<?php theme_the_excerpt(); ?>
	</div>
	<?php get_template_part( 'template-parts/meta' ); ?>

	<a class="btn" href="<?php the_permalink(); ?>" title="<?php the_title_attribute( array( 'before' => __( 'Permalink to: ', 'base' ) ) ); ?>">
		<?php _e( 'Read more', 'base' ); ?>
	</a>
</div>
