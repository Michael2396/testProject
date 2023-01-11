</main>
</div>

<?php
$footer_logo = get_theme_mod('footer_logo');
$footer_copyright = get_theme_mod('footer_copyright');
?>

<footer id="footer" class="footer">
    <div class="container">
        <?php if ($footer_logo) : ?>
            <div class="footer-logo">
                <a href="<?php echo home_url('/'); ?>"><?php echo wp_get_attachment_image($footer_logo, 'full'); ?></a>
            </div>
        <?php endif; ?>
        <?php if (has_nav_menu('footer')) : ?>
            <?php wp_nav_menu(array(
                'container' => false,
                'theme_location' => 'footer',
                'menu_id' => 'footer-navigation',
                'menu_class' => 'footer-navigation',
                'items_wrap' => '<ul id="%1$s" class="%2$s">%3$s</ul>',
            )); ?>
        <?php endif; ?>
        <?php if ($footer_copyright) : ?>
            <p class="copyright"><?php echo str_replace('[year]', date('Y'), $footer_copyright); ?></p>
        <?php endif; ?>
        <?php get_template_part('template-parts/social-links'); ?>
    </div>
</footer>
<a class="accessibility screen-reader-text" href="#wrapper"><?php _e('Back to top', 'base'); ?></a>
</div>
<?php wp_footer(); ?>
</body>
</html>
