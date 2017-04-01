<?php
$dsn = 'mysql:host=localhost;dbname=strategy_blog';
$username = 'blog1php';
$password = 'password';

try {
    $db = new PDO($dsn,$username,$password);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $db->exec('SET NAMES "utf8"');
} catch (PDOException $e) {
    die("There was a problem connecting to the db");
}
 //echo "Connected OK.";
?>