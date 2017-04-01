<?php
function get_music($db) {
    //global $db;
   // echo "get music";
    $sql = "SELECT * FROM songs ORDER BY name";
    $results = $db->query($sql);
    return $results;
}
function get_song($db, $id) {
    $sql = "SELECT * FROM songs WHERE id=$id";
    $results = $db->query($sql);
    //echo $sql;
    return $results;
}
?>