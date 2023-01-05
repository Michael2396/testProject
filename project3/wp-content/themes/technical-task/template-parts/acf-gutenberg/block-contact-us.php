<?php
/**
 * Title: Block Contact Us
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
$class_names = array('contact-us-section');
$title = get_field('title');
$map_latitude = get_field('map_latitude');
$map_longitude = get_field('map_longitude');
$contact = get_field('contact_form');
$block_id = get_section_id($block);
?>

<?php if ($title) : ?>
    <section id="<?php echo $block_id; ?>"
             class="<?php echo get_section_class_names($block, $class_names); ?>"<?php if ($title) : ?> aria-labelledby="<?php echo $block_id; ?>-title"<?php endif; ?>>
        <div class="container">
            <?php if ($title) : ?>
                <h2 class="section-title" id="<?php echo $block_id; ?>-title"><?php echo esc_html($title); ?></h2>
            <?php endif; ?>
            <div class="box-info">
                <?php if ($contact || $map_latitude && $map_longitude) : ?>
                    <div class="col">
                        <div class="map" data-latitude="<?php echo $map_latitude; ?>"
                             data-longitude="<?php echo $map_longitude; ?>"></div>
                    </div>
                    <div class="col">
                        <?php if ($contact) : ?>
                            <div class="contact-form"><?php echo do_shortcode($contact); ?></div>
                        <?php endif; ?>
                    </div>
                <?php endif; ?>

            </div>
        </div>
    </section>
<?php endif; ?>
