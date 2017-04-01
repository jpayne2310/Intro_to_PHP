<?php
require_once("models/dbcon.php");
require_once("models/songs.php");
$action = $_REQUEST['action'];
$songID = $_GET['id'];
include_once("views/header.php");
if ($action == NULL || empty($action)):
    echo "Null or empty";
endif;
if ($action == "songsDetails"):
    $songs = get_song($db, $songID);
    include_once("views/songsDetails.php");
endif;
  //list all the records 
  $songs = get_music($db);
  include_once ("views/songsList.php");
  include_once("views/footer.php");
?>