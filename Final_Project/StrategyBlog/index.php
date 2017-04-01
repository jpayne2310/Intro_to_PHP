<?php
session_start();
require_once("models/dbcon.php");
$err="";
if( !empty($_POST['submit']) )
{
    $username=$_POST['username'];
    $pwd=$_POST['password'];
    $db = new PDO('mysql:host=localhost;dbname=strategy_blog', 'blog1php', 'password');
    $sql = "SELECT id,username,pwd,fname,admin FROM users WHERE username = '$username'";
    $users = $db->query($sql);
    $user = $users->fetch();
    $blog_id = $user['id'];
    $admin = $user['admin'];
    $fname = $user['fname'];
    if(password_verify($pwd, $user['pwd']))
    {
            $_SESSION['admin'] = $admin;
            $_SESSION['fname'] = $fname;
            $_SESSION['id'] = $blog_id;
            header('Location: index2.php');
    }
}
echo $err;

//login form
?>
<form action = "index.php" method="post">
    <style>
          
          body {
               background-image: url(images/black2.jpg);
               background-repeat: no-repeat;
               background-size: cover;
          }
     </style>
    <link rel="stylesheet" type="text/css" href="css/strategyblog.css" />
    <a href="registerPage/index.php">Register</a>
    <div class="header">
    <header>Strategy Blog of Payne</header>
    </div>
    <div class="login">
    Username : <input type="text" name="username" />
    Password : <input type="password" name="password" />
    <br>  <br>
    <div class="form">
    <input type="submit" name="submit" value="Log In!" />
    <br>  <br>
    <a href="index2.php"><p1>Public Entry</p1></a>
    </div>
    </div>
</form>