<?php
session_start();
include_once("views/header2.php");
?>
 <link rel="stylesheet" type="text/css" href="css/strategyblog.css" />
<h1>You are Logged Out.</h1>
<?php
$admin = 0;
$fname = "";
$_SESSION = array();
session_destroy();
?>