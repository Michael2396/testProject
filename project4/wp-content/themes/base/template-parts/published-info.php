<p class="meta-info">
	<a href="<?php echo get_date_archive_link() ?>" rel="bookmark">
		<time datetime="<?php echo get_the_date( 'Y-m-d' ); ?>">
			<?php the_time( 'F jS, Y' ); ?>
		</time>
	</a>
	<?php _e( 'by', 'base' ); ?>
	<a href="<?php echo get_author_posts_url( get_the_author_meta( 'ID' ), get_the_author_meta( 'user_nicename' ) ); ?>"><?php the_author(); ?></a>
</p>
