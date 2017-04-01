<?php
session_start();
include_once("index.php");
require_once("models/dbcon.php");
require_once("models/blogs.php");
$action = $_REQUEST['action'];
$blogID = $_GET['id'];
$title = $_POST['title'];
$content = $_POST['content'];
$date = $_POST['date'];
$create_id = $_SESSION['id'];
include_once("views/header.php");

/*if ($action == NULL || empty($action)):
    echo "Null or empty";
endif;*/

switch($action)
{
    case "blogDetails":
        $blog = get_blog($db, $blogID);
        include_once("views/blogDetails.php");
        break;
    case "delete":
        delete_blog($db, $blogID);
        break;
    case "new":
        if ($_SESSION['admin'] == 1 || $_SESSION['admin'] == 2 )
        {
        include_once("views/blogForm.php");  
        }
        else
        {
        ?><h1>"Not Authorized!!"</h1> <?php
        }
        break;
    case "edit":
        $blog = get_blog($db, $blogID);
        include_once("views/blogForm.php");
        break;
    case "Save":
        validate2($date);
        if ($_SESSION['val'] == 0){
            break;}
        else{
        $result = new_blog($db, $title, $content, $date, $create_id);
        echo "<h1>$result records added.<h1>";
        }
        break;
    case "Update":
        validate2($date);
        if ($_SESSION['val'] == 0){
            break;}
        else{
        $result = update_blog($db, $title, $content, $date, $create_id, $blogID);
        echo "<h1>$result records update.<h1>";
        }
        break;
}

$blogs = get_blogs($db);
include_once("views/blogsList.php");
include_once("views/footer.php");
?>
