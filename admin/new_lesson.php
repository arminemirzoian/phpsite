<?php
include ('lock.php');
?>
<title>
    Insert new lesson
</title>
<link href="style.css" rel="stylesheet" type="text/css">
<div class="main_border">
    <?php include "blocks/header.php"; ?>
    <div id="main">
        <?php include "blocks/left.php"; ?>
        <div id="right">
            <form name="form1" method="post" action="add_lessons.php">
                <p>
                    <label>
                        Insert the title of the lesson:<br>
                        <input type="text" name="title" id="title">
                    </label>
                </p>
                <p>
                    <label>
                        Insert short description of the lesson:<br>
                        <input type="text" name="meta_d" id="meta_d">
                    </label>
                </p>
                <p>
                    <label>
                        Insert keywords of the lesson:<br>
                        <input type="text" name="meta_k" id="meta_k">
                    </label>
                </p>
                <p>
                    <label>
                        Insert date when the lesson was added:<br>
                        <input type="date" name="date" id="date" value="2017-07-13">
                    </label>
                </p>
                <p>
                    <label>
                        Insert short description of the lesson with paragraph tags:<br>
                        <textarea name="description" id="description" cols="40" rows="5"></textarea>
                    </label>
                </p>
                <p>
                    <label>
                        Insert the entire text of the lesson with tags:<br>
                        <textarea name="text" id="text" cols="40" rows="20"></textarea>
                    </label>
                </p>
                <p>
                    <label>
                        Insert the name of the author of the lesson:<br>
                        <input type="text" name="author" id="author">
                    </label>
                </p>
                <p>
                    <label>
                        <input type="submit" name="submit" id="submit" value="Insert the lesson to the database">
                    </label>
                </p>
            </form>
        </div>
    </div>
    <?php include "blocks/footer.php"?>

