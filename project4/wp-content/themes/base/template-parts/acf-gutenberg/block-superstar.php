<?php
/**
 * Title: Block Superstar SEO
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
$class_names = array('superstar-seo-section');
$title = get_field('title');
$text = get_field('text');
$btn = get_field('btn');
$img = get_field('img');
$block_id = get_section_id($block);
?>

<?php if ($title || $text) : ?>
    <section id="<?php echo $block_id; ?>"
             class="<?php echo get_section_class_names($block, $class_names); ?>"<?php if ($title) : ?> aria-labelledby="<?php echo $block_id; ?>-title"<?php endif; ?>>
        <div class="container">
            <div class="info">
                <?php if ($title) : ?>
                    <h2 class="section-title" id="<?php echo $block_id; ?>-title"><?php echo esc_html($title); ?></h2>
                <?php endif; ?>

                <?php if ($text) : ?>
                    <div class="box-text" id="<?php echo $block_id; ?>-text"><?php echo esc_html($text); ?></div>
                <?php endif; ?>
                <?php if ($btn) : ?>
                    <div class="box-button">
                        <?php if (BaseACFLinkHelper::isLink($btn)) BaseACFLinkHelper::theLink($btn, ['btn']); ?>
                    </div>
                <?php endif; ?>
            </div>
            <?php if ($img): ?>
                <div class="box-img">
                    <?php echo wp_get_attachment_image($img, 'full'); ?>
                </div>
            <?php endif; ?>

        </div>
    </section>
<?php endif; ?>
