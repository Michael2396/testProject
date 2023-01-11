<?php
/**
 * Title: Block Clients
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
$class_names = array('block-clients-section');
$title = get_field('title');
$block_id = get_section_id($block);
?>

<?php if ($title) : ?>
    <section id="<?php echo $block_id; ?>"
             class="<?php echo get_section_class_names($block, $class_names); ?>"<?php if ($title) : ?> aria-labelledby="<?php echo $block_id; ?>-title"<?php endif; ?>>
        <div class="container">
            <div class="info-section">
                <?php if ($title) : ?>
                    <h2 class="section-title" id="<?php echo $block_id; ?>-title"><?php echo $title; ?></h2>
                <?php endif; ?>
                <div class="box-arrow js-box-arrow"></div>
            </div>
            <?php
            $_args = [
                'post_type' => 'clients',
                'posts_per_page' => -1,
            ];
            $query = new WP_Query($_args);
            ?>
            <?php if ($query) : ?>
                <ul class="box-slider">
                    <?php while ($query->have_posts()) : $query->the_post(); ?>
                        <?php
                        $position = get_field('position', get_the_ID());
                        $video = get_field('video', get_the_ID());
                        ?>
                        <li href="<?php echo get_post_permalink(); ?>" class="post-item">
                            <div class="box-item">
                                <?php if (has_post_thumbnail()) : ?>
                                    <div class="box-img"
                                         data-displacement-map="<?php echo the_post_thumbnail_url(); ?>">
                                        <?php the_post_thumbnail(); ?>
                                        <a href="<?php echo $video; ?>" class="lightbox box-img-link"
                                           data-fancybox="true"> </a>
                                    </div>
                                <?php endif; ?>
                                <div class="box-info">
                                    <?php if (get_the_content()) : ?>
                                        <div class="box-text"><?php the_content(); ?></div>
                                    <?php endif; ?>
                                    <?php if (get_the_title()) : ?>
                                        <h4 class="box-title"><?php the_title(); ?></h4>
                                    <?php endif; ?>
                                    <?php if ($position) : ?>
                                        <h5 class="box-position"
                                            id="<?php echo $block_id; ?>-text"><?php echo esc_html($position); ?></h5>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </li>
                    <?php endwhile; ?>
                </ul>
                <div class="slick-dots js-slick-dots">
                    <span>01</span>
                </div>
            <?php endif; ?>
        </div>
    </section>
<?php endif; ?>
