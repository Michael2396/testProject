<?php
/**
 * Technical task Theme Customizer
 *
 * @package Technical_task
 */

/**
 * Add postMessage support for site title and description for the Theme Customizer.
 *
 * @param WP_Customize_Manager $wp_customize Theme Customizer object.
 */
function technical_task_customize_register( $wp_customize ) {
	$wp_customize->get_setting( 'blogname' )->transport         = 'postMessage';
	$wp_customize->get_setting( 'blogdescription' )->transport  = 'postMessage';
	$wp_customize->get_setting( 'header_textcolor' )->transport = 'postMessage';

	if ( isset( $wp_customize->selective_refresh ) ) {
		$wp_customize->selective_refresh->add_partial(
			'blogname',
			array(
				'selector'        => '.site-title a',
				'render_callback' => 'technical_task_customize_partial_blogname',
			)
		);
		$wp_customize->selective_refresh->add_partial(
			'blogdescription',
			array(
				'selector'        => '.site-description',
				'render_callback' => 'technical_task_customize_partial_blogdescription',
			)
		);
	}
}
add_action( 'customize_register', 'technical_task_customize_register' );

/**
 * Render the site title for the selective refresh partial.
 *
 * @return void
 */
function technical_task_customize_partial_blogname() {
	bloginfo( 'name' );
}

/**
 * Render the site tagline for the selective refresh partial.
 *
 * @return void
 */
function technical_task_customize_partial_blogdescription() {
	bloginfo( 'description' );
}

/**
 * Binds JS handlers to make Theme Customizer preview reload changes asynchronously.
 */
function technical_task_customize_preview_js() {
	wp_enqueue_script( 'technical-task-customizer', get_template_directory_uri() . '/js/customizer.js', array( 'customize-preview' ), _S_VERSION, true );
}
add_action( 'customize_preview_init', 'technical_task_customize_preview_js' );


function base_customizer( $wp_customize ) {
    // Footer options
    $wp_customize->add_section( 'base_theme_footer', array(
        'title'    => __( 'Footer', 'base' ),
        'priority' => 100,
    ) );

    // Footer copyright setting
    $wp_customize->add_setting( 'footer_copyright', array(
        'sanitize_callback' => 'sanitize_text_field',
    ) );

    $wp_customize->add_control( 'footer_copyright', array(
        'type'    => 'text',
        'section' => 'base_theme_footer',
        'label'   => __( 'Footer copyright', 'base' ),
    ) );

    // Footer copyright setting
    $wp_customize->add_setting( 'footer_mailchimp', array(
        'sanitize_callback' => 'sanitize_text_field',
    ) );

    $wp_customize->add_control( 'footer_mailchimp', array(
        'type'    => 'text',
        'section' => 'base_theme_footer',
        'label'   => __( 'Footer Mailchimp', 'base' ),
    ) );

    // Footer logo
    $wp_customize->add_setting( 'footer_logo' );

    $wp_customize->add_control( new WP_Customize_Media_Control( $wp_customize, 'footer_logo', array(
        'label'     => __( 'Footer logo', 'base' ),
        'section'   => 'base_theme_footer',
        'mime_type' => 'image',
    ) ) );
}

add_action( 'customize_register', 'base_customizer' );