<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Technical_task
 */
$footer_logo = get_theme_mod('footer_logo');
$footer_copyright = get_theme_mod('footer_copyright');
$footer_mailchimp = get_theme_mod('footer_mailchimp');
$link = get_field('link_footer', 'option');
?>

<footer id="colophon" class="site-footer">
    <div class="container">
        <div class="footer-top">
            <div class="info">
                <?php if ($footer_logo) : ?>
                    <div class="footer-logo">
                        <a href="<?php echo home_url('/'); ?>"><?php echo wp_get_attachment_image($footer_logo, 'full'); ?></a>
                    </div>
                <?php endif; ?>
                <?php if ($footer_mailchimp) : ?>
                    <div class="mailchimp mobile"><?php echo do_shortcode($footer_mailchimp); ?></div>
                <?php endif; ?>
            </div>
            <?php if (has_nav_menu('footer-1')) : ?>
                <?php wp_nav_menu(array(
                    'container' => false,
                    'theme_location' => 'footer-1',
                    'menu_id' => 'footer-navigation',
                    'menu_class' => 'footer-navigation',
                    'items_wrap' => '<ul id="%1$s" class="%2$s">%3$s</ul>',
                )); ?>
            <?php endif; ?>
            <?php if (has_nav_menu('footer-2')) : ?>
                <?php wp_nav_menu(array(
                    'container' => false,
                    'theme_location' => 'footer-2',
                    'menu_id' => 'footer-navigation',
                    'menu_class' => 'footer-navigation',
                    'items_wrap' => '<ul id="%1$s" class="%2$s">%3$s</ul>',
                )); ?>
            <?php endif; ?>
            <?php if ($footer_mailchimp) : ?>
                <div class="mailchimp"><?php echo do_shortcode($footer_mailchimp); ?></div>
            <?php endif; ?>
        </div>
        <div class="footer-bottom">
            <?php if ($link) : ?>
                <div class="box-text" id="<?php echo $block_id; ?>-text"><a
                            href="<?php echo $link["url"]; ?>"><?php echo $link["title"]; ?></a></div>
            <?php endif; ?>

            <?php if ($footer_copyright) :
                $today = getdate();
                ?>
                <p class="copyright"><?php echo $today['year'], ' ', $footer_copyright; ?></p>
            <?php endif; ?>
        </div>
    </div>
</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
