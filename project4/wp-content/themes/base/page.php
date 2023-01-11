<?php get_header(); ?>
<div id="content">
	<div class="container">
		<?php while ( have_posts() ) : the_post(); ?>
			<?php the_title( '<div class="title"><h1>', '</h1></div>' ); ?>
			<?php the_post_thumbnail( 'thumbnail_1920' ); ?>
			<?php the_content(); ?>
			<?php edit_post_link( __( 'Edit', 'base' ), '<p>', '</p>' ); ?>
		<?php endwhile; ?>
		<?php wp_link_pages(); ?>
		<?php comments_template(); ?>
	</div>
</div>
<?php get_sidebar(); ?>
<?php get_footer(); ?>
