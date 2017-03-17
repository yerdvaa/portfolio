<?php
include 'application/bdd-connection.php';

$template = 'admin';

$list = '
		SELECT Post.Title, Post.Content, Author.FirstName, Author.LastName, Category.Name, Post.CreationTimestamp, Post.Id
		FROM Post
		INNER JOIN Author
		on Post.Author_Id = Author.Id
		INNER JOIN Category
		on Post.Category_Id = Category.Id
		ORDER BY Post.CreationTimestamp ASC
		';

// préparation de la requête
	$query = $pdo->prepare($list);
	// execution de la requête
	$query->execute();
	// récupération des données
	$resultList= $query->fetchAll();

include 'layout.phtml';