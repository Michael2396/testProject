<?php
// Custom post types

//add_action( 'init', 'init_custom_post_types' );

// Get custom post type labels
function register_clients()
{

    register_post_type('clients', array(
        'label' => null,
        'labels' => array(
            'name' => 'Clients',
            'singular_name' => 'Client',
            'edit_item' => 'Edit Work',
        ),
        'supports' => array('title', 'editor', 'custom-fields', 'excerpt', 'thumbnail'), // 'title','editor','author','thumbnail','excerpt','trackbacks','custom-fields','comments','revisions','page-attributes','post-formats'
        'public' => true,
        'has_archive' => true,
        'rewrite' => array('slug' => 'clients'),
        'query_var' => true,
        'show_in_rest' => true
    ));
}

add_action('init', 'register_clients');