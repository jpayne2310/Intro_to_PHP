<?php
$dsn = 'mysql:host=localhost;dbname=music';
$username = 'musicphp';
$password = 'password';

try {
    $db = new PDO($dsn,$username,$password);
} catch (PDOException $e) {
    /*$err = $e->getMessage();
    echo $err;   //gives to much information to hacker
    exit();*/
    die("There was a problem connecting to the db");
}
 //echo "Connected OK.";
?>