<?php
session_start();
?>
<h1>Details for <?php echo $blog['title'];?></h1>
<h2>Content: <?php echo $blog['content'];?></h2>
<p>Date: <?php echo $blog['date'];?></p>
<?php
if($blog['create_id'] == $_SESSION['id'] || $_SESSION['admin'] == 1):
?>
<p><a href="index2.php?action=edit&id=<?php echo $blog['id'];?>">Edit</a> |
<a href="index2.php?action=delete&id=<?php echo $blog['id'];?>">Delete</a></p>
<?php
endif
?>