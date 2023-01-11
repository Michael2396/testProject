<?php
function ajax_handler()
{
    $data = $_POST;
    $input_text = $data['inputText'];
    $input_email = $data['inputEmail'];
    $textarea = $data['textarea'];
    wp_mail($input_email, $input_text, $textarea, $headers = '');
}


add_action('wp_ajax_form', 'ajax_handler');
add_action('wp_ajax_nopriv_form', 'ajax_handler');
