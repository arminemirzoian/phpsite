<?php
    include ("blocks/db.php");
    $result = mysqli_query($db, "SELECT title, meta_d, meta_k, text FROM settings WHERE page='index' ");
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
            <?php echo $myrow["text"]; ?>
        </div>
    </div>
    <?php include "blocks/footer.php"?>

<?php
/**
 * Created by PhpStorm.
 * User: MKphoto
 * Date: 7/13/2017
 * Time: 11:41 AM
 */