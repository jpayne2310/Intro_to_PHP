<?php
session_start();
?>

    <form action="index.php" method="post">
        <style>
          
          body {
               background-image: url(../images/black2.jpg);
               background-repeat: no-repeat;
               background-size: cover;
          }
     </style>
        
    <a href="http://localhost/StrategyBlog/">Log In</a>
        
    <div class="header">
    <header>Strategy Blog of Payne</header>
    </div>
    <div class="register">
        <label for="username">User Name: </label><input type="text" id="username" name="username" /><br />
        <br>
        <label for="email">Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" id="email" name="email" /><br />
        <br>
        <label for="pwd">Password:&nbsp;&nbsp;&nbsp; </label><input type="password" id="pwd" name="pwd" /><br />
        <br>
        <label for="fname">First Name: </label><input type="text" id="fname" name="fname" /><br />
        <br>
        <div class="form">
        <input type="submit" name="submit" value="Register" />
         </div>
    </div>