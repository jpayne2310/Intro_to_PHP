<?php
session_start();
$err="";
if( !empty($_POST['submit']) )
{
    $name=$_POST['username'];
    $pwd=$_POST['password'];
    
    $db = new PDO('mysql:host=localhost;dbname=music', 'musicphp', 'password');
    $sql = "SELECT id,admin FROM users WHERE username = '$name' AND pwd='$pwd'";
    $users = $db->query($sql);
    $user = $users->fetch();
    $admin = $user[admin];

    if(empty($user['id']) || $user == NULL)
    {
        $err = "Bad username or password";
    }
        else
        {
            $_SESSION['userid'] = user['id'];
            $_SESSION['admin'] = $admin;
            header('Location: index.php');
        }
       
}
echo $err;
?>
<form action = "login.php" method="post">
    Username : <input type="text" name="username" />
    Password : <input type="password" name="password" />
    <input type="submit" name="submit" value="Log In!" />
</form>