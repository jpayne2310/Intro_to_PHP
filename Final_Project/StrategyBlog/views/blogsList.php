<h1>Blogs</h1>
<ul>
    <?php foreach ($blogs as $blog):
    ?>
    <li><a href="index2.php?action=blogDetails&id=<?php echo $blog['id']; ?>">
    <?php echo $blog['title'];?>
        </a>
    </li>
<?php
    endforeach; ?>
</ul>
<p><a href="index2.php?action=new">Add a Blog</a></p>