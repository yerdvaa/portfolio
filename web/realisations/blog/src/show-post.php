<?php
include 'application/bdd-connection.php';

$template = 'show-post';

$id = $_GET['Id'];

$list = '
            SELECT Post.Title, Post.Content, Author.FirstName, Author.LastName, Category.Name, Post.CreationTimestamp, Post.Id
		FROM Post
		INNER JOIN Author
		on Post.Author_Id = Author.Id
		INNER JOIN Category
		on Post.Category_Id = Category.Id
			WHERE 
				Post.Id = ?
		';

// préparation de la requête
	$query = $pdo->prepare($list);
	// execution de la requête
	$query->execute([$id]);
	// récupération des données
	$resultList= $query->fetch();


$sql1 = '
		SELECT *
		FROM Comment
		WHERE Post_Id = ?
		ORDER BY CreationTimestamp DESC
		';
		
$query = $pdo->prepare($sql1);
	// execution de la requête
	$query->execute([$id]);
	// récupération des données
	$resultComment= $query->fetchAll();
	

include 'layout.phtml';