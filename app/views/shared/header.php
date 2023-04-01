<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../../../stylesheets/styles.css">
	<title><?= $data ?></title>
</head>
<body onload="openTab(event, 'parks')">
	<div class="image">
		<h1>Welcome to our website</h1>
	</div>
    <div class="navbar">
        <a href="/Home/park">Home</a>
        <a href="#">About Us</a>
        <a href="#">Help</a>
    </div>

	<div class="container">
<?php
if(isset($_GET['success'])){
	echo '<div class="alert alert-success">'.$_GET['success'].'</div>';
}
if(isset($_GET['error'])){
	echo '<div class="alert alert-danger">'.$_GET['error'].'</div>';
}
?>