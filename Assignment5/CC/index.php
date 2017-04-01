<?php
require_once("models/dbcon.php");
require_once("models/cardFunctions.php");
$ccNum = $_POST['ccNum'];
$ccType = $_POST['ccType'];
$ccExpMo = $_POST['ccExpMo'];
$ccExpYr = $_POST['ccExpYr'];
$ccName = $_POST['ccName'];
$ccCCV = $_POST['ccCCV'];
$action = $_POST['action'];
include_once("views/header.php");

if ($action=="Add Card")
{
    $valid = validate($ccNum, $ccType, $ccExpMo, $ccExpYr, $ccName, $ccCCV);
    if ($valid=="")
    {
        $ccExpDate =  $ccExpYr . "/" . $ccExpMo . "/" . $_SESSION['number'];
        insertData($db, $ccNum, $ccType, $ccExpDate, $ccName, $ccCCV);
    }
}
    include("views/ccForm.php");
    include_once("views/footer.php");
?>