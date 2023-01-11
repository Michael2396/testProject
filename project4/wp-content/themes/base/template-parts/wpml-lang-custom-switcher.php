<?php if ( function_exists( 'icl_get_languages' ) && ( $languages = icl_get_languages() ) ) : ?>
	<ul class="languages-links">
		<?php foreach ( $languages as $lang ) : ?>
			<li<?php if ( $lang['active'] ) : ?> class="active"<?php endif; ?>>
				<a href="<?php echo esc_url( $lang['url'] ); ?>" title="<?php echo esc_attr( $lang['native_name'] ); ?>">
					<?php echo $lang['code']; ?>
				</a>
			</li>
		<?php endforeach; ?>
	</ul>
<?php endif; ?>
