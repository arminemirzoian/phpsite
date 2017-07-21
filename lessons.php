<?php
include ("blocks/db.php");
$result = mysqli_query($db, "SELECT title, meta_d, meta_k, text FROM settings WHERE page='lessons' ");
$myrow = mysqli_fetch_array($result);
?>
<meta name="description" content="<?php echo $myrow["meta_d"]; ?> ">
<meta name="keywords" content="<?php echo $myrow["meta_k"]; ?> ">
<title>
    <?php echo $myrow["title"]; ?>
</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script src="js/jquery-1.5.min.js" type="text/javascript"></script>
<script src="js/equalHeight.js" type="text/javascript"></script>
<div class="main_border">
    <?php include "blocks/header.php"; ?>
    <div id="main">
        <?php include "blocks/left.php"; ?>
        <div id="right">
            <?php echo $myrow['text']; ?>
            <?php
            $result = mysqli_query($db, "SELECT id, title, description, author, date FROM lessons");
            $myrow = mysqli_fetch_array($result);
           do {
               printf(
               "<table class='lesson' align = 'center'>
                <tr>
                    <td class='lesson_title'> 
                    <p class='lesson_name'><a href='view_lesson.php?id=%s'>%s</a></p>
                    <p class='lesson_adds'>Creation date: %s</p>
                    <p class='lesson_adds'>Author of the lesson: %s</p></td >
                </tr >
                
                <tr >
                    <td >%s </td >
                </tr >
                
            </table ><br><br>", $myrow['id'], $myrow['title'], $myrow['date'], $myrow['author'], $myrow['description']);
            }
            while (
               $myrow = mysqli_fetch_array($result)
           );
             ?>
        </div>
    </div>
    <?php include "blocks/footer.php"?>

