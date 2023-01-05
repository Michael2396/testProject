<?php
/**
 * Title: Block Hero Section
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
$class_names = array('hero-section');
$title = get_field('title');
$block_id = get_section_id($block);
?>
<?php if (have_rows('hero_section')) : ?>
    <section id="<?php echo $block_id; ?>"
             class="<?php echo get_section_class_names($block, $class_names); ?>"<?php if (have_rows('hero_section')) : ?> aria-labelledby="<?php echo $block_id; ?>-title"<?php endif; ?>>
        <div class="container">
            <?php if (have_rows('hero_section')): ?>
                <?php while (have_rows('hero_section')): the_row(); ?>
                    <?php if (get_row_layout() == 'info'):
                        $title = get_sub_field('title');
                        $date = get_sub_field('date');
                        $description = get_sub_field('description');
                        $button = get_sub_field('button');
                        ?>

                        <?php if ($date) : ?>
                        <div class="date">
                            <?php _e('Annual congress ', 'technical-task'); ?>
                            <?php echo $date; ?>
                            <a href="#">10-11 juni</a>
                        </div>
                    <?php endif; ?>
                        <?php if ($title) : ?>
                        <h1 class="box-title"
                            id="<?php echo $block_id; ?>-title"><?php echo esc_html($title); ?></h1>
                    <?php endif; ?>
                        <?php if ($description) : ?>
                        <div class="box-text" id="<?php echo $block_id; ?>-text"><?php echo $description; ?></div>
                    <?php endif; ?>
                        <?php if ($button) : ?>
                        <div class="box-button">
                            <a class="btn" href="<?php echo $button['url'] ?>"><?php echo $button['title'] ?></a>
                        </div>
                    <?php endif; ?>
                    <?php endif; ?>
                <?php endwhile; ?>
            <?php endif; ?>
        </div>
    </section>
<?php endif; ?>
