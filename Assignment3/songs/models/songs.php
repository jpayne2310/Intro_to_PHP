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
    $song = $results->fetch();
    return $song;
}
function delete_song($db, $id) {
    $sql = "DELETE FROM songs WHERE id=:id";
    $ps = $db->prepare($sql); //ps = prepared statement
    $ps->bindValue(':id', $id);
    $ps->execute();
}
function new_song($db, $name, $artist, $running_time, $larics, $rating) {
    try{
        $sql = "INSERT INTO songs SET name = :name, artist = :artist, running_time = :running_time, larics = :larics, rating = :rating";
        $ps = $db->prepare($sql);
        $ps->bindValue(':name', $name);
        $ps->bindValue(':artist', $artist);
        $ps->bindValue(':running_time', $running_time);
        $ps->bindValue(':larics', $larics);
        $ps->bindValue(':rating', $rating);
        return $ps->execute();
        }
    catch(PDOException $e){
        die('There was a problem with your add quary');
    }
}
function update_song($db, $name, $artist, $running_time, $larics, $rating, $id) {
    try{
        $sql = "UPDATE songs SET name = :name, artist = :artist, running_time = :running_time, larics = :larics, rating = :rating WHERE id=:id";
        $ps = $db->prepare($sql);
        $ps->bindValue(':name', $name);
        $ps->bindValue(':artist', $artist);
        $ps->bindValue(':running_time', $running_time);
        $ps->bindValue(':larics', $larics);
        $ps->bindValue(':rating', $rating);
        $ps->bindValue(':id', $id);
        return $ps->execute();
        }
    catch(PDOException $e){
        die('There was a problem with your edit quary');
    }
}
?>