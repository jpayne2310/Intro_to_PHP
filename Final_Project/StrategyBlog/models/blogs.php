<?php
session_start();
function get_blogs($db)
    {
        $sql = "SELECT * FROM blogs_posted ORDER BY title";
        $results = $db->query($sql);
        return $results;
    }
function get_blog($db, $id)
    {
        $sql = "SELECT * FROM blogs_posted WHERE id=$id";
        $results = $db->query($sql);
        $blog = $results->fetch();
        return $blog;
    }
function delete_blog($db, $id)
    {
        $sql = "DELETE FROM blogs_posted WHERE id=:id";
        $ps = $db->prepare($sql); //ps = prepared statement
        $ps->bindValue(':id', $id);
        $ps->execute();
    }
function new_blog($db, $title, $content, $date, $create_id)
{
    try{
        $sql = "INSERT INTO blogs_posted SET title = :title, content = :content, date = :date, create_id = :create_id";
        $ps = $db->prepare($sql);
        $ps->bindValue(':title', $title);
        $ps->bindValue(':content', $content);
        $ps->bindValue(':date', $date);
        $create_id = $_SESSION['id'];
        $ps->bindValue(':create_id', $create_id);
        return $ps->execute();
        }
        catch(PDOException $e)
            {
                die('There was a problem with your add quary');
            }
}
function update_blog($db, $title, $content, $date, $create_id, $id)
{
    try{
        $sql = "UPDATE blogs_posted SET title = :title, content = :content, date = :date, create_id = :create_id WHERE id=:id";
        $ps = $db->prepare($sql);
        $ps->bindValue(':title', $title);
        $ps->bindValue(':content', $content);
        $ps->bindValue(':date', $date);
        $ps->bindValue(':create_id', $create_id);
        $ps->bindValue(":id", $id, PDO::PARAM_INT);
        return $ps->execute();
        }
        catch(PDOException $e)
            {
                die('There was a problem with your edit quary' . $e);
            }
}
function validate2($date)
{
    $_SESSION['val'] = 1;
    if(!preg_match('/^2016-((1[0-2])|(0[0-9]))-((3[0-1])|([0-2][0-9]))$/',$date)) {
        echo("<h1>Incorrect Date Format!<h1>");
        $_SESSION['val'] = 0;
    }
    return $_SESSION['val'];
}

?>