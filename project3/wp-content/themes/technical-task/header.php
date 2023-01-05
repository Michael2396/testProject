<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Technical_task
 */

$header_custom_logo = get_field('header_logo', 'options');
$top_bar_title = get_field('top_bar_title', 'options');
$top_bar_text = get_field('top_bar_text', 'options');
?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="https://gmpg.org/xfn/11">

    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<div id="page" class="site">
    <a class="skip-link screen-reader-text"
       href="#primary"><?php esc_html_e('Skip to content', 'technical-task'); ?></a>

    <header id="masthead" class="site-header">
        <?php if ($top_bar_title || $top_bar_text) : ?>
            <div class="top-bar">
                <div class="text">
                    <?php if ($top_bar_title) : ?>
                        <h5 class="box-title"><?php echo $top_bar_title; ?></h5>
                    <?php endif; ?>
                    <?php if ($top_bar_text) : ?>
                        <p class="box-text"><?php echo $top_bar_text; ?></p>
                    <?php endif; ?>
                </div>
            </div>
        <?php endif; ?>
        <div class="header-info">
            <div class="box-logo">
                <?php if (has_custom_logo()): ?>
                    <div class="logo"><?php the_custom_logo(); ?></div>
                <?php endif; ?>
                <?php if ($header_custom_logo): ?>
                    <div class="logo logo-stick">
                        <a href="<?php echo home_url(); ?>">
                            <?php echo wp_get_attachment_image($header_custom_logo, 'full'); ?>
                        </a>
                    </div>
                <?php endif; ?>
            </div>
            <div class="header-navigation">
                <div class="header-navigation-top">
                    <nav id="site-navigation" class="main-navigation">
                        <?php
                        wp_nav_menu(
                            array(
                                'theme_location' => 'menu-1',
                                'menu_id' => 'primary-menu',
                            )
                        );
                        ?>
                    </nav>
                    <?php
                    get_search_form();
                    ?>
                    <div class="basket">
                        <div class="count">
                            <?php echo WC()->cart->get_cart_contents_count(); ?>
                        </div>
                    </div>
                    <a href="<?php echo wp_login_url(); ?>">Login</a>
                </div>
                <div class="header-navigation-bottom">
                    <nav id="site-navigation" class="main-navigation">
                        <?php
                        wp_nav_menu(
                            array(
                                'theme_location' => 'menu-2',
                                'menu_id' => 'bottom-menu',
                            )
                        );
                        ?>
                    </nav>
                    <div class="language">
                        EN
                    </div>
                </div>

            </div>
        </div>
    </header><!-- #masthead -->
