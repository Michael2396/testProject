<?php
/**
 * Title: Block Side by side v1
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
$class_names = array('side-by-side-section');
$get_by_side = have_rows('side_by_side_v2');
$block_id = get_section_id($block);
?>
<?php if (have_rows('side_by_side_v1') || have_rows('side_by_side_v2')) : ?>
    <section id="<?php echo $block_id; ?>"
             class="<?php echo get_section_class_names($block, $class_names); ?>  <?php echo ($get_by_side) ? "big-img" : 'init'; ?>"<?php if (have_rows('hero_section')) : ?> aria-labelledby="<?php echo $block_id; ?>-title"<?php endif; ?>>
        <?php if (have_rows('side_by_side_v1') || have_rows('side_by_side_v2')): ?>
            <?php while (have_rows('side_by_side_v1') || have_rows('side_by_side_v2')): the_row(); ?>
                <?php if (get_row_layout() == 'info_v1' || get_row_layout() == 'info_v2'):
                    $title = get_sub_field('title');
                    $text = get_sub_field('text');
                    $button = get_sub_field('button');
                    $img = get_sub_field('img');
                    $big_img = get_sub_field('big_img');
                    $position_image = get_sub_field('position_image');
                    ?>
                    <div class="container <?php echo ($position_image) ? "reverse" : 'init'; ?>">

                    <div class="box-info <?php echo ($get_by_side) ? "big-img" : 'init'; ?>">
                        <?php if ($img): ?>
                            <div class="box-img">
                                <?php echo wp_get_attachment_image($img, 'full'); ?>
                            </div>
                        <?php endif; ?>
                        <div class="box-description">
                            <?php if ($title) : ?>
                                <h1 class="box-title"
                                    id="<?php echo $block_id; ?>-title"><?php echo esc_html($title); ?></h1>
                            <?php endif; ?>
                            <?php if ($text) : ?>
                                <div class="box-text" id="<?php echo $block_id; ?>-text"><?php echo $text; ?></div>
                            <?php endif; ?>
                            <?php if ($button) : ?>
                                <div class="box-button">
                                    <a class="btn"
                                       href="<?php echo $button['url'] ?>"><?php echo $button['title'] ?></a>
                                </div>
                            <?php endif; ?>
                        </div>
                    </div>
                    <?php if ($big_img): ?>
                    <div class="box-big-img">
                        <?php echo wp_get_attachment_image($big_img, 'full'); ?>
                    </div>
                <?php endif; ?>
                <?php endif; ?>
            <?php endwhile; ?>
            </div>
        <?php endif; ?>
    </section>
<?php endif; ?>
