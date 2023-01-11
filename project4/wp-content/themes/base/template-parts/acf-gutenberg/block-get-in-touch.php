<?php
/**
 * Title: Block Get In Touch
 * Description: A custom Block example block.
 * Keywords: block, example
 * Category: custom-acf-blocks
 * Icon: admin-customizer
 * color: false
 * enqueue_style: true
 * enqueue_script: true
 * enqueue_libs:
 */
?>

<?php
$class_names = array('get-in-touch-section');
$title = get_field('title');
$link = get_field('link');
$address = get_field('address');
$block_id = get_section_id($block);
?>

<?php if ($title) : ?>
    <section id="<?php echo $block_id; ?>"
             class="<?php echo get_section_class_names($block, $class_names); ?>"<?php if ($title) : ?> aria-labelledby="<?php echo $block_id; ?>-title"<?php endif; ?>>
        <div class="container">
            <div class="col">
                <?php if ($title) : ?>
                    <h2 class="section-title" id="<?php echo $block_id; ?>-title"><?php echo esc_html($title); ?></h2>
                <?php endif; ?>

                <?php if ($link) : ?>
                    <?php if (BaseACFLinkHelper::isLink($link)) BaseACFLinkHelper::theLink($link, ['link']); ?>
                <?php endif; ?>
                <?php if ($address) : ?>
                    <div class="box-address" id="<?php echo $block_id; ?>-text"><?php echo esc_html($address); ?></div>
                <?php endif; ?>
            </div>
            <div class="col">
                <div class="box-form">
                    <form action="<?php echo get_permalink(); ?>" method="post" class="form-validation">
                        <input type="text" placeholder="Text" data-required="true" class="input-text">
                        <input type="email" placeholder="Email" data-required="true" class="input-email">
                        <textarea placeholder="Write something..." data-required="true" class="textarea"></textarea>
                        <button type="submit" class="btn js-form-button"
                                data-link="<?php echo site_url(); ?>/wp-admin/admin-ajax.php">Submit Message
                        </button>
                    </form>
                    <div class="form-sent">
                        Form Sent
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php endif; ?>
