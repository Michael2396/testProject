<?php get_header(); ?>
<div id="content">
	<div class="container">
		<?php while ( have_posts() ) : the_post(); ?>
			<?php get_template_part( 'template-parts/content-single/content-single', get_post_type() ); ?>
			<?php comments_template(); ?>
			<?php get_template_part( 'template-parts/content-single/pager-single', get_post_type() ); ?>
		<?php endwhile; ?>
	</div>
</div>
<?php get_sidebar(); ?>
<?php get_footer(); ?>
