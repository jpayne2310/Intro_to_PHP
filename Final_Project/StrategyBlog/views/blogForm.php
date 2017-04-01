<form action="index2.php<?php if($action == "edit") {echo "?id=" . $blog['id'];}?>" method="post">
    <div class="form">
        <br>
    <label for="title">Title: </label>
    <input type="text" id="title" name="title" value="<?php echo $blog['title'];?>" /><br />
    <br>
    <label for="content">Blog: </label>
    <input type="text" id="content" name="content" value="<?php echo $blog['content'];?>" /><br />
    <br>
    <label for="date">Date: </label>
    <input type="text" id="date" name="date" placeholder="Ex. 2016-02-14" value="<?php echo $blog['date'];?>" /><br />
    <br> <br>
    <input type="submit" name="action" value="<?php if ($action == "new") {echo "Save"; } else {echo "Update";}?>" />
    </div>
</form>