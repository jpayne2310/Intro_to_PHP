<form action="index.php<?php if($action == "edit") {echo "?id=" . $song['id'];}?>" method="post">
    <label for="name">Song: </label>
    <input type="text" id="name" name="name" value="<?php echo $song['name'];?>" /><br />
    <label for="artist">Artist: </label>
    <input type="text" id="artist" name="artist" value="<?php echo $song['artist'];?>" /><br />
    <label for="running_time">RunningTime: </label>
    <input type="text" id="running_time" name="running_time" value="<?php echo $song['running_time'];?>" /><br />
    <label for="larics">Larics: </label>
    <input type="text" id="larics" name="larics" value="<?php echo $song['larics'];?>" /><br />
    <label for="rating">Rating: </label>
    <input type="text" id="rating" name="rating" value="<?php echo $song['rating'];?>" /><br />
    <input type="submit" name="action" value="<?php if ($action == "new") {echo "Save"; } else {echo "Update";}?>" /> 
</form>