<h1>Songs</h1>

<ul>
    <?php foreach ($songs as $song): 
    echo  "<li>
        <a href='index.php?action=songsDetails&id=". $song['id']."'>".
            $song['name']."
        </a>
        </li>";
    endforeach; ?>
</ul>
