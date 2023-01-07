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

$script_deps = array('jquery');
wp_enqueue_script('ajax-script', get_template_directory_uri() . '/js/ajax-loadmore.js', $script_deps, '', true);


function ajax_handler()
{
    // prepare our arguments for the query
    $args = array(
        'post_type' => 'product',
        'posts_per_page' => $_POST['posts_per_page'],
        'paged' => $_POST['posts_data_page'],
        'order' => 'ASC',
    );

    // it is always better to use WP_Query but not here
    $loop = new WP_Query($args);

    if ($loop->have_posts()) {
        while ($loop->have_posts()) : $loop->the_post();
            wc_get_template_part('content', 'product');
        endwhile;
    } else {
        echo __('No products found');
    }
    die; // here we exit the script and even no wp_reset_query() required!
}


add_action('wp_ajax_loadmore', 'ajax_handler'); // wp_ajax_{action}
add_action('wp_ajax_nopriv_loadmore', 'ajax_handler'); // wp_ajax_nopriv_{action}