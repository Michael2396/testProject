<?php

// Register gutenberg category and blocks
add_action( 'acf/init', 'domain_acf_init' );

function domain_acf_init() {
	if ( function_exists( 'acf_register_block' ) ) {
		add_filter( 'block_categories_all', function ( $categories, $post ) {
			return array_merge( $categories, array(
				array(
					'slug'  => 'custom-acf-blocks',
					'title' => __( 'Custom ACF Blocks', 'base' )
				)
			) );
		}, 99, 2 );

		$acf_gutenberg_blocks_folder = '/template-parts/acf-gutenberg/';

		if ( $acf_gutenberg_blocks = scandir( get_theme_file_path( $acf_gutenberg_blocks_folder ) ) ) {
			$acf_gutenberg_blocks = array_diff( $acf_gutenberg_blocks, array( '.', '..' ) );
			$acf_gutenberg_blocks = array_filter( $acf_gutenberg_blocks, function ( $file ) {
				return ! is_dir( $file ) ? : $file;
			} );

			foreach ( $acf_gutenberg_blocks as $acf_gutenberg_block ) {
				$name                      = str_replace( '.php', '', $acf_gutenberg_block );
				$path                      = get_theme_file_path( $acf_gutenberg_blocks_folder . $acf_gutenberg_block );
				$block_data                = get_file_data( $path, array(
					'title'       => 'Title',
					'description' => 'Description',
					'keywords'    => 'Keywords',
					'category'    => 'Category',
					'icon'        => 'Icon',
					'color' 	  => 'color',
				) );
				$block_data['title']       = $block_data['title'] ? : $name;
				$block_data['description'] = $block_data['description'] ? : $name;
				$block_data['category']    = $block_data['category'] ? : 'custom-acf-blocks';
				$block_data['keywords']    = $block_data['keywords'] ? array_map( 'trim', explode( ', ', $block_data['keywords'] ) ) : array(
					$block_data['title'],
					$block_data['description']
				);
				$block_data['icon']        = $block_data['icon'] ? : 'block-default';

				$color_support             = filter_var( $block_data['color'], FILTER_VALIDATE_BOOLEAN );

				$args = array(
					'name'            => $name,
					'title'           => $block_data['title'],
					'description'     => $block_data['description'],
					'category'        => $block_data['category'],
					'icon'            => $block_data['icon'],
					'keywords'        => $block_data['keywords'],
					'mode'            => 'edit',
					'supports'        => array( 'align' => false, 'mode' => false, 'anchor' => true, 'color' => $color_support ),
					'render_callback' => 'acf_block_render_callback',
					'enqueue_assets'  => 'acf_block_enqueue_assets',
				);

				acf_register_block( $args );
			}
		}
	}
}

// Gutenberg enqueue assets
function acf_block_enqueue_assets( $block ) {
	$block_slug                  = str_replace( 'acf/', '', $block['name'] );
	$acf_gutenberg_blocks_folder = '/template-parts/acf-gutenberg/';
	$handle_title                = 'block-' . $block_slug;
	$path                        = get_theme_file_path( $acf_gutenberg_blocks_folder . $block_slug . '.php' );

	$block_data = get_file_data( $path, array(
		'enqueue_style'  => 'enqueue_style',
		'enqueue_script' => 'enqueue_script',
		'enqueue_libs'   => 'enqueue_libs',
	) );

	$block_data['enqueue_style']  = filter_var( $block_data['enqueue_style'], FILTER_VALIDATE_BOOLEAN );
	$block_data['enqueue_script'] = filter_var( $block_data['enqueue_script'], FILTER_VALIDATE_BOOLEAN );
	$block_data['enqueue_libs']   = $block_data['enqueue_libs'] ? array_map( 'trim', explode( ', ', $block_data['enqueue_libs'] ) ) : array();
	$deps_styles                  = array();
	$deps_scripts                 = array();

	// libs
	if ( $block_data['enqueue_script'] && $block_data['enqueue_libs'] ) {
		foreach ( $block_data['enqueue_libs'] as $lib ) {
			// styles
			if ( wp_style_is( $lib, $list = 'registered' ) ) {
				array_push( $deps_styles, $lib );
			}
			// scripts
			if ( wp_script_is( $lib, $list = 'registered' ) ) {
				array_push( $deps_scripts, $lib );
			}
		}
	}
	// styles
	if ( $block_data['enqueue_style'] ) {
		wp_enqueue_style( $handle_title, get_template_directory_uri() . '/css/acf-gutenberg/' . $block_slug . '.css', $deps_styles );
	}
	// scripts
	if ( $block_data['enqueue_script'] ) {
		wp_enqueue_script( $handle_title, get_template_directory_uri() . '/js/acf-gutenberg/' . $block_slug . '.js', $deps_scripts, '', true );
	}
}

// Gutenberg rendering
function acf_block_render_callback( $block ) {
	$block_name     = $block['name'];
	$block_title    = $block['title'];
	$slug           = str_replace( 'acf/', '', $block_name );
	$gutenberg_path = '/template-parts/acf-gutenberg/';
	$file_path      = get_theme_file_path( $gutenberg_path . "{$slug}.php" );

	if ( file_exists( $file_path ) ) {
		echo WP_DEBUG ? '<!-- START ' . $block_title . ' -->' : '';
		include( $file_path );
		echo WP_DEBUG ? '<!-- END ' . $block_title . ' -->' : '';
	}
}

// Get gutenberg block class names
function get_section_class_names( $block, $additional_class_names ) {
	$align_class = $block['align'] ? 'align' . $block['align'] : '';
	$block_class = ( isset( $block['className'] ) ) ? $block['className'] : '';
	$class_names = array();

	if ( $align_class ) {
		$class_names[] = $align_class;
	}

	if ( $block_class ) {
		$class_names[] = $block_class;
	}

	if ( ! empty( $block['backgroundColor'] ) ) {
		$class_names[] = 'has-background';
		$class_names[] = 'has-' . $block['backgroundColor'] . '-background-color';
	}
	if ( ! empty( $block['textColor'] ) ) {
		$class_names[] = 'has-text-color';
		$class_names[] = 'has-' . $block['textColor'] . '-color';
	}

	$class_names_result = ( $additional_class_names && $class_names ) ? array_merge( $additional_class_names, $class_names ) : $additional_class_names;

	return esc_attr( implode( ' ', $class_names_result ) );
}

// Get gutenberg block id
function get_section_id( $block ) {
	$id = $block['id'];

	if ( ! empty( $block['anchor'] ) ) {
		$id = $block['anchor'];
	}

	return esc_attr( $id );
}
