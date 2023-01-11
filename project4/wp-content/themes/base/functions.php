<?php

// Default settings
include( get_template_directory() . '/inc/default.php' );

// Custom Post Types
include( get_template_directory() . '/inc/cpt.php' );

// Theme functions
include( get_template_directory() . '/inc/theme-functions.php' );

// Custom Menu Walker
include( get_template_directory() . '/inc/classes.php' );

// Custom Widgets
include( get_template_directory() . '/inc/widgets.php' );

// Theme sidebars
include( get_template_directory() . '/inc/sidebars.php' );

// Theme thumbnails
include( get_template_directory() . '/inc/thumbnails.php' );

// Theme menus
include( get_template_directory() . '/inc/menus.php' );

// Theme Custom Ajax
include( get_template_directory() . '/inc/ajax/custom-ajax.php' );

// Theme css & js
include( get_template_directory() . '/inc/scripts.php' );

// Theme Options – The Customize API
include( get_template_directory() . '/inc/customizer.php' );

// BaseACFLinkHelper class
include( get_template_directory() . '/inc/classes/BaseACFLinkHelper.php' );

// ACF Gutenberg Blocks
include( get_stylesheet_directory() . '/inc/acf-gutenberg-blocks.php' );
