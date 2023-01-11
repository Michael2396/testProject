<?php
/*
Template Name: Home Template
*/
?>
<?php get_header(); ?>
<div id="content">
	<?php while ( have_posts() ) : the_post(); ?>
		<div class="post" id="post-<?php the_ID(); ?>">
			<?php the_title( '<div class="title"><h1>', '</h1></div>' ); ?>
			<div class="container">
				<?php the_content(); ?>
				<?php edit_post_link( __( 'Edit', 'base' ), '<p>', '</p>' ); ?>
			</div>
		</div>
	<?php endwhile; ?>
</div>
<?php get_sidebar(); ?>
<?php get_footer(); ?>
