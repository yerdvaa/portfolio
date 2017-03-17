<?php
include 'application/bdd-connection.php';

$template = 'show-post';

$id = $_POST['id'];
$nickname = $_POST['nickname'];
$comment = $_POST['comment'];

$sql =  '
		INSERT INTO Comment(NickName, Content, Post_Id, CreationTimestamp)
		VALUES (?, ?, ?, NOW())
		';

$query = $pdo->prepare($sql);

		$query->execute([$nickname, $comment, $id]);

		//retour à la page d'accueil lorsque l'article est ajouté
		header('Location: accueil.php');
		exit();



include 'layout.phtml';