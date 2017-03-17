<?php
include 'application/bdd-connection.php';
$template = 'admin';

$id = ($_GET['Id']);

$query =  '
			DELETE 
			FROM Post
			WHERE Id = ?
			';

$result = $pdo->prepare($query);
		$result->execute([$id]);
		
		//$post = $result->fetch(); 
			

include 'layout.phtml';