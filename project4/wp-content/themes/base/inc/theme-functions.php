<?php
// Theme functions

// Editor color palette
if (!function_exists('base_editor_color_palette')) {
    function base_editor_color_palette()
    {
        add_theme_support('editor-color-palette', array(
            array(
                'name' => esc_attr__('gray', 'base'),
                'slug' => 'gray',
                'color' => '#999',
            ),
            array(
                'name' => esc_attr__('black', 'base'),
                'slug' => 'black',
                'color' => '#000',
            ),
            array(
                'name' => esc_attr__('white', 'base'),
                'slug' => 'white',
                'color' => '#fff',
            ),
        ));
    }
    //add_action( 'after_setup_theme', 'base_editor_color_palette' );
}

if (!function_exists('base_add_editor_color_palette_classes')) {
    function base_add_editor_color_palette_classes()
    {
        $colors = get_theme_support('editor-color-palette');
        if (is_array($colors[0]) && !empty($colors[0])) {
            $custom_css = "";
            foreach ($colors[0] as $color) {
                $color_slug = $color['slug'];
                $color_hex = $color['color'];
                $custom_css .= ".has-$color_slug-color{color:$color_hex}.has-$color_slug-background-color{background-color:$color_hex}";
            }
            wp_add_inline_style('base-style', $custom_css);
        }
    }
    //add_action( 'wp_enqueue_scripts', 'base_add_editor_color_palette_classes', 100 );
}

// Background color style
function get_section_bg_color($color = false)
{
    return $color ? ' style="background-color:' . esc_attr($color) . ';"' : '';
}

// Background-image style
function get_section_bg_image($image_url = false)
{
    return $image_url ? ' style="background-image:url(' . esc_attr($image_url) . ');"' : '';
}

// Border-color style
function get_section_border_color($color = false)
{
    return $color ? ' style="border-color:' . esc_attr($color) . ';"' : '';
}

// Color style
function get_section_color($color = false)
{
    return $color ? ' style="color:' . esc_attr($color) . ';"' : '';
}

// Reusable blocks page
function base_reusable_blocks_admin_menu()
{
    add_menu_page('Reusable Blocks', 'Reusable Blocks', 'edit_posts', 'edit.php?post_type=wp_block', '', 'dashicons-editor-table', 22);
}

//add_action( 'admin_menu', 'base_reusable_blocks_admin_menu' );
