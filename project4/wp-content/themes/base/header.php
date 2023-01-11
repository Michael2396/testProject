<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="<?php bloginfo('charset'); ?>">
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
<?php if (function_exists('wp_body_open')) wp_body_open(); ?>
<noscript>
    <div><?php _e('Javascript must be enabled for the correct page display', 'base'); ?></div>
</noscript>
<div class="page-holder">
    <div id="wrapper">
        <a class="accessibility screen-reader-text" accesskey="s"
           href="#content"><?php _e('Skip to Content', 'base'); ?></a>
        <header id="header" class="header">
            <div class="container">
                <?php if (has_custom_logo()) : ?>
                    <div class="logo" itemscope itemtype="http://schema.org/Brand">
                        <?php the_custom_logo(); ?>
                    </div>
                <?php endif; ?>

                <?php if (has_nav_menu('primary')) : ?>
                    <?php wp_nav_menu(array(
                        'container' => false,
                        'theme_location' => 'primary',
                        'menu_id' => 'header-navigation',
                        'menu_class' => 'header-navigation',
                        'items_wrap' => '<ul id="%1$s" class="%2$s">%3$s</ul>',
                        'walker' => new Custom_Walker_Nav_Menu
                    )); ?>
                <?php endif; ?>
            </div>
        </header>
        <main id="main">
