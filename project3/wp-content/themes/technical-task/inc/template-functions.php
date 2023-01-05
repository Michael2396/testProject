<?php
/**
 * Functions which enhance the theme by hooking into WordPress
 *
 * @package Technical_task
 */

/**
 * Adds custom classes to the array of body classes.
 *
 * @param array $classes Classes for the body element.
 * @return array
 */
function technical_task_body_classes($classes)
{
    // Adds a class of hfeed to non-singular pages.
    if (!is_singular()) {
        $classes[] = 'hfeed';
    }

    // Adds a class of no-sidebar when there is no sidebar present.
    if (!is_active_sidebar('sidebar-1')) {
        $classes[] = 'no-sidebar';
    }

    return $classes;
}

add_filter('body_class', 'technical_task_body_classes');

/**
 * Add a pingback url auto-discovery header for single posts, pages, or attachments.
 */
function technical_task_pingback_header()
{
    if (is_singular() && pings_open()) {
        printf('<link rel="pingback" href="%s">', esc_url(get_bloginfo('pingback_url')));
    }
}

add_action('wp_head', 'technical_task_pingback_header');

add_action('acf/init', 'my_acf_op_init');
function my_acf_op_init()
{

    // Check function exists.
    if (function_exists('acf_add_options_page')) {

        // Register options page.
        $option_page = acf_add_options_page(array(
            'page_title' => __('Theme Option Settings'),
            'menu_title' => __('Theme Option Settings'),
            'menu_slug' => 'theme-option-settings',
            'capability' => 'edit_posts',
            'redirect' => false
        ));
    }
}

add_action('wp_footer', 'custom_jquery_add_to_cart_script');
function custom_jquery_add_to_cart_script()
{
    ?>
    <script type="text/javascript">
      (function ($) {
        $(document.body).on('added_to_cart', function () {
          let item = $('.basket .count');
          let valueBasketCount = parseInt(item.html());
          valueBasketCount++;
          item.html(valueBasketCount.toString());
        });

      })(jQuery);
    </script>
    <?php
}