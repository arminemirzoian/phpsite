<?php
$db = mysqli_connect("localhost", "php", "12345");
mysqli_select_db($db, "phpsite");
mysqli_query($db,"SET NAMES utf8");
?>