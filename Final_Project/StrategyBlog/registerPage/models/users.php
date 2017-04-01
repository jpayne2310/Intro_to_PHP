<?php
session_start();
function register($db, $username, $email, $pwd, $fname, $admin){
    $sql ="SELECT id FROM users WHERE username = :uname OR email = :email";
    try{
        $ps = $db->prepare($sql);
        $ps->bindValue(':uname', $username);
        $ps->bindValue(':email', $email);
        $ps->execute();
        if ($ps->rowCount() > 0){
            echo ("<h1>The username and/or email are already taken<h1>");
            return "";
        }
    }catch(PDOException $e){
        die("There was a problem with the query.");
    }
    $sql ="INSERT INTO users SET username = :uname, email = :email, pwd = :pwd, fname = :fname, admin = :admin";
    $hashPass = password_hash($pwd, PASSWORD_DEFAULT);
    try{
        $ps = $db->prepare($sql);
        $ps->bindValue(':uname', $username);
        $ps->bindValue(':email', $email);
        $ps->bindValue(':pwd', $hashPass);
        $ps->bindValue(':fname', $fname);
        $admin = 2;
        $ps->bindValue(':admin', $admin);
        $ps->execute();
    }catch(PDOException $e){
        die("There was a problem with the query.");
    }
    return '';
}
function validate($username, $email, $fname) {
   $err = "";
   $_SESSION[$val] = 1;
    if (empty($username) || empty($email) || empty($fname)) {
        echo("<h1>Fill the form out completely!<h1>");
    $_SESSION[$val] = 0;
    }
        if(!preg_match('/^[\w\.\-]+@([\w\-]+\.)+[a-z]+$/i',$email)) {
        echo("<h1>Incorrect Email Format!<h1>");
        $_SESSION[$val] = 0;
    }

    return $_SESSION[$val];
}
?>