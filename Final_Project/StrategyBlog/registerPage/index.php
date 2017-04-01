<link rel="stylesheet" type="text/css" href="../css/strategyblog.css" />
<meta charset="utf-8">
<?php
session_start();
require_once ('models/dbcon.php');
require_once ('models/users.php');
//grab data
$submit = filter_input(INPUT_POST, 'submit');
$username = filter_input(INPUT_POST, 'username', FILTER_SANITIZE_STRING);
$email = filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL);
$pwd = filter_input(INPUT_POST, 'pwd');
$fname = filter_input(INPUT_POST, 'fname');
$admin = filter_input(INPUT_POST, 'admin');

    
    //set error message
$err = '';

//examine the submit button
switch ($submit) :
case "Register":
    validate($username, $email, $fname);
    if ($_SESSION[$val] == 1){
        register($db, $username, $email, $pwd, $fname, $admin);
    }
        break;
    endswitch;
    include_once ('views/login.php');
?>