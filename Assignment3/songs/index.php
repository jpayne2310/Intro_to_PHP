<?php
require_once("models/dbcon.php");
require_once("models/songs.php");
$action = $_REQUEST['action'];
$songID = $_GET['id'];
$name = $_POST['name'];
$artist = $_POST['artist'];
$running_time = $_POST['running_time'];
$larics = $_POST['larics'];
$rating = $_POST['rating'];
include_once("views/header.php");
if ($action == NULL || empty($action)):
    echo "Null or empty";
endif;
/*if ($action == "songsDetails"):
    $songs = get_song($db, $songID);
    include_once("views/songsDetails.php");
endif;*/

switch($action){
    case "songDetails":
        $song = get_song($db, $songID);
        include_once("views/songDetails.php");
        break;
    case "delete":
        delete_song($db, $songID);
        break;
    case "new":
        include_once("views/songForm.php");
        break;
    case "edit":
        $song = get_song($db, $songID);
        include_once("views/songForm.php");
        break;
    case "Save":
        $result = new_song($db, $name, $artist, $running_time, $larics, $rating);
        echo "$result records added.";
        break;
    case "Update":
        $result = update_song($db, $name, $artist, $running_time, $larics, $rating, $songID);
        break;
}

  //list all the records 
  $songs = get_music($db);
  include_once ("views/songsList.php");
  include_once("views/footer.php");
?>