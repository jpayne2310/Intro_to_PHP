<?php
$dsn = 'mysql:host=localhost;dbname=music';
$username = 'musicphp';
$password = 'password';

try {
    $db = new PDO($dsn,$username,$password);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $db->exec('SET NAMES "utf8"');
} catch (PDOException $e) {
    /*$err = $e->getMessage();
    echo $err;   //gives to much information to hacker
    exit();*/
    die("There was a problem connecting to the db");
}
 //echo "Connected OK.";
?>