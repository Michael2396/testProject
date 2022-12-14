<?php

$errors = [];

// get User Name
if (isset($_POST['user_name']) && !empty($_POST['user_name'])) {
    $user_name = $_POST['user_name'];
} else {
    $errors['user_name'] = 'error';
}

// get User Email
if (isset($_POST['user_email']) && !empty($_POST['user_email'])) {
    $user_email = $_POST['user_email'];
} else {
    $errors['user_email'] = 'error';
}

// get User Phone
if (isset($_POST['user_phone']) && !empty($_POST['user_phone'])) {
    $user_phone = $_POST['user_phone'];
} else {
    $errors['user_phone'] = 'error';
}

// save form data
if (!$errors) {

    if ($leads = fopen("leads.txt", "a+")) {
        $content = "User Name: " . $user_name ."\n";
        $content .= "User Email: " . $user_email ."\n";
        $content .= "User Phone: " . $user_phone ."\n";
        $content .= "-------------------------------\n";

        fwrite($leads, $content);

        fclose($leads);

        echo json_encode(['send' => 'success']);
    } else {
        $errors['open_leads'] = 'error';
        echo json_encode(['errors' => $errors]);
    }

} else {
    echo json_encode(['errors' => $errors]);
}

die();