<?php if ( have_rows( 'social_links', 'option' ) ) : ?>
	<ul class="social-links">
		<?php while ( have_rows( 'social_links', 'option' ) ) : the_row(); ?>
			<?php
			$icon = get_sub_field( 'icon' );
			$link = get_sub_field( 'link' );
			?>
			<?php if ( $icon && $link ) : ?>
				<li>
					<a href="<?php echo esc_url( $link ); ?>" target="_blank" rel="noopener">
						<?php echo $icon; ?>
					</a>
				</li>
			<?php endif; ?>
		<?php endwhile; ?>
	</ul>
<?php endif; ?>
