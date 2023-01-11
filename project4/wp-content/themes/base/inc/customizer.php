<?php
// Customizer

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

	// Footer logo
	$wp_customize->add_setting( 'footer_logo' );

	$wp_customize->add_control( new WP_Customize_Media_Control( $wp_customize, 'footer_logo', array(
		'label'     => __( 'Footer logo', 'base' ),
		'section'   => 'base_theme_footer',
		'mime_type' => 'image',
	) ) );
}

add_action( 'customize_register', 'base_customizer' );
