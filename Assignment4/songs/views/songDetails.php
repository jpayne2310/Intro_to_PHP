<h1>Details for <?php echo $song['name'];?></h1>
<h2>Artist: <?php echo $song['artist']; ?></h2>
<p>Run_Time: <?php echo $song['running_time']; ?></p>
<p>Larics: <?php echo $song['larics']; ?></p>
<h3>Rating: <?php echo $song['rating']; ?></h3>
<p><a href="index.php?action=edit&id=<?php echo $song['id'];?>">Edit</a> |
<a href="index.php?action=delete&id=<?php echo $song['id'];?>">Delete</a></p>