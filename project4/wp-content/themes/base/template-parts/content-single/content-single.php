<article <?php post_class(); ?> id="post-<?php the_ID(); ?>">
	<div class="title">
		<?php the_title( '<h1>', '</h1>' ); ?>
		<?php get_template_part( 'template-parts/published-info' ); ?>
	</div>
	<div class="content">
		<?php the_post_thumbnail( 'thumbnail_1920' ); ?>
		<?php the_content(); ?>
	</div>
	<?php wp_link_pages(); ?>
	<?php get_template_part( 'template-parts/meta' ); ?>
</article>
