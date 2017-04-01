<?php
include_once("index.php");
?>
<!DOCTYPE html>
    <html lang="en">
    <head>
     <link rel="stylesheet" type="text/css" href="css/strategyblog.css" />
     <meta charset="utf-8">
     <title>Final</title>
     <style>
          
          body {
               background-image: url(images/black2.jpg);
               background-repeat: no-repeat;
               background-size: cover;
          }
     </style>
    </head>
    <?php ob_end_clean(); ?>

    <body>
     <div class="wrapper">
          <style>
          
          body {
               background-image: url(images/black2.jpg);
               background-repeat: no-repeat;
               background-size: cover;
          }
     </style>
          

          <div class="welcome">
         <p>Strategy Blog
         <?php echo date('h:i a d M y');     //output date and time
          echo "<br>" . "Welcome " . $_SESSION['fname'] . "!";
         ?>
         <a href="logout.php">Logout</a>
         </p> </div>
           <div class="header">
    <header>Strategy Blog of Payne</header>
    </div>