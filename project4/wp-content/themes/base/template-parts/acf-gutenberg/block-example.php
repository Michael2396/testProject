<?php
/**
 * Title: Block example
 * Description: A custom Block example block.
 * Keywords: block, example
 * Category: custom-acf-blocks
 * Icon: admin-customizer
 * color: false
 * enqueue_style: true
 * enqueue_script: false
 * enqueue_libs:
 */
?>

<?php
$class_names 	= array( 'example-section' );
$title 			= get_field( 'title' );
$test        	= get_field( 'test' );
$block_id 		= get_section_id( $block );
?>

<?php if ( $title || $test ) : ?>
	<section id="<?php echo $block_id; ?>" class="<?php echo get_section_class_names( $block, $class_names ); ?>"<?php if ( $title ) : ?> aria-labelledby="<?php echo $block_id; ?>-title"<?php endif; ?>>
		<div class="container">
			<?php if ( $title ) : ?>
				<h2 class="section-title" id="<?php echo $block_id; ?>-title"><?php echo esc_html( $title ); ?></h2>
			<?php endif; ?>

			<?php if ( $test ) : ?>
				<div class="test"><?php echo $test; ?></div>
			<?php endif; ?>

		</div>
	</section>
<?php endif; ?>
