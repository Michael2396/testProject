<?php get_header(); ?>
<div id="content">
	<?php if ( have_posts() ) : ?>
		<div class="title">
			<?php the_archive_title( '<h1>', '</h1>' ); ?>
		</div>
		<?php while ( have_posts() ) : the_post(); ?>
			<?php get_template_part( 'template-parts/content/content', get_post_type() ); ?>
		<?php endwhile; ?>
		<?php get_template_part( 'template-parts/pager' ); ?>
	<?php else : ?>
		<?php get_template_part( 'template-parts/not-found' ); ?>
	<?php endif; ?>
</div>
<?php get_sidebar(); ?>
<?php get_footer(); ?>
