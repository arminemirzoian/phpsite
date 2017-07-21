<?php
include ("blocks/db.php");
if (isset($_GET["id"])) {
    $id = $_GET['id'];
}
$result = mysqli_query($db, "SELECT * FROM articles WHERE id='$id' ");
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
            <p class="view_title"><?php echo $myrow['title']; ?></p>
            <p class="view_date">Publication date: <?php echo $myrow['date']; ?></p>
            <p class="view_date">Author: <?php echo $myrow['author']; ?></p>
            <p><?php echo $myrow['text']; ?></p>
        </div>
    </div>
    <?php include "blocks/footer.php"?>

