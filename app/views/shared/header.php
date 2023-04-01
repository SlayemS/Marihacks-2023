<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../../../stylesheets/styles.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
	<title><?= $data ?></title>
</head>
<body>
	<header id="header">
		<a href="#"><img src="images/logo.png" class="logo" alt=""></a>
		
		<div>
			<ul id="navbar">
				<li><a href="#">Home</a></li>
				<li><a href="#">About Us</a></li>
				<li>
				<?php if (!isset($_SESSION['user_id'])) {?>
				      		<a href="/User/index"><i class="" title="Log in"></i></a>
				      	<?php } else { ?>
				      		<a href="/User/logout"><i class="" title='Log out'></i></a>
				      	<?php }
				      	?>
		      	</li>
			</ul>
		</div>
	</header>

	<div class="container">
<?php
if(isset($_GET['success'])){
	echo '<div class="alert alert-success">'.$_GET['success'].'</div>';
}
if(isset($_GET['error'])){
	echo '<div class="alert alert-danger">'.$_GET['error'].'</div>';
}
?>