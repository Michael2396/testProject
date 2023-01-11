<?php get_header(); ?>
	<div id="content">
		<div class="container">
			<?php if ( have_posts() ) : ?>
				<?php while ( have_posts() ) : the_post(); ?>
					<?php get_template_part( 'template-parts/content/content', get_post_type() ); ?>
				<?php endwhile; ?>
				<?php get_template_part( 'template-parts/pager' ); ?>
			<?php else : ?>
				<?php get_template_part( 'template-parts/not-found' ); ?>
			<?php endif; ?>
		</div>
	</div>
<?php get_footer(); ?>
