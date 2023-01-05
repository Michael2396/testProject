<?php
/**
 * Title: Block products
 * Description: A custom Block example block.
 * Keywords: block, example
 * Category: custom-acf-blocks
 * Icon: admin-customizer
 * color: false
 * enqueue_style: false
 * enqueue_script: false
 * enqueue_libs:
 */
?>

<?php
$class_names = array('products-section');
$value_products = intval(get_field('value_products'));
$block_id = get_section_id($block);
?>

<?php if ($value_products) : ?>
    <section id="<?php echo $block_id; ?>"
             class="<?php echo get_section_class_names($block, $class_names); ?>"<?php if ($title) : ?> aria-labelledby="<?php echo $block_id; ?>-title"<?php endif; ?>>
        <div class="container">
            <ul class="products">
            <?php
            $args = array(
                'post_type' => 'product',
                'posts_per_page' => $value_products
            );
            $loop = new WP_Query( $args );
            if ( $loop->have_posts() ) {
                while ( $loop->have_posts() ) : $loop->the_post();
                    wc_get_template_part( 'content', 'product' );
                endwhile;
            } else {
                echo __( 'No products found' );
            }
            wp_reset_postdata();
            ?>
            </ul><!--/.products-->

        </div>
    </section>
<?php endif; ?>
