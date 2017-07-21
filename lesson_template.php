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
<div class="main_border">
    <?php include "blocks/header.php"; ?>
    <div id="main">
        <?php include "blocks/left.php"; ?>
        <div id="right">

        </div>
    </div>
    <?php include "blocks/footer.php"?>

