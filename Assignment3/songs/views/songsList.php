<h1>Songs</h1>
<p><a href="index.php?action=new">Add a Song</a></p>
<ul>
    <?php foreach ($songs as $song): 
    ?>
    <li><a href="index.php?action=songDetails&id=<?php echo $song['id']; ?>">
    <?php echo $song['name'];?>
        </a>
    </li>
<?php
    endforeach; ?>
</ul>
