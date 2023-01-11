<?php
// Theme css & js

function base_scripts_styles()
{
    $in_footer = true;

    // Comment js
    if (is_singular() && comments_open() && get_option('thread_comments')) {
        wp_enqueue_script('comment-reply');
    }

    // Path info
    $path_info = array(
        'base' => get_template_directory_uri() . '/',
        'css' => 'css/',
        'js' => 'js/',
        'swf' => 'swf/',
    );

    wp_localize_script('base-script', 'pathInfo', $path_info);

    // Font Awesome
    wp_register_style('font-awesome', 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css');

    // Slick
    wp_register_style('slick', 'https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css');
    wp_register_script('slick', 'https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js', array('jquery'), '', $in_footer);

    // Fancybox
    wp_register_style('fancybox', 'https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.css');
    wp_register_script('fancybox', 'https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.js', array('jquery'), '', $in_footer);

    // Google map
    //$google_map_api_key = get_field( 'google_map_api_key', 'option' );
    //wp_register_script( 'google-map', 'https://maps.googleapis.com/maps/api/js?key=' . $google_map_api_key . '&callback=initMap', array(), '', $in_footer );

    // Main css
    $style_deps = array('font-awesome', 'fancybox', 'slick');

    wp_enqueue_style('base-style', get_stylesheet_uri(), $style_deps);

    // Main js
    $script_deps = array('jquery', 'fancybox', 'slick');

    wp_enqueue_script('base-script', get_template_directory_uri() . '/js/jquery.main.js', $script_deps, '', $in_footer);


    wp_enqueue_style('fancybox', get_stylesheet_uri(), $style_deps);
    // Implementation css
    // wp_enqueue_style( 'base-theme', get_template_directory_uri() . '/theme.css', array() );
}

add_action('wp_enqueue_scripts', 'base_scripts_styles');





