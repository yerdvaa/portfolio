<?php
include 'application/bdd-connection.php';


//Si le formulaire n'est pas vide, on insère les données, puis redirection vers admin
if(!empty($_POST))
	{
		$title = $_POST['title'];
		$content = $_POST['content'];
		$author = $_POST['author'];
		$category = $_POST['category'];
		

		// insérer les données dans la bdd
		$sql =  'INSERT INTO Post (Title, Content, Author_Id, Category_Id, CreationTimestamp)
					VALUES (?, ?, ?, ?, NOW())';

		$query = $pdo->prepare($sql);

		$query->execute([$title, $content, $author, $category]);

		//retour à la page d'accueil lorsque l'article est ajouté
		header('Location: admin.php');
		exit();
	}
//sinon afficher le formulaire
else
	{
	 //Rechercher dans la bdd, les categories
	$category = '
				SELECT *
				FROM Category
				ORDER BY Name ASC';

// préparation de la requête
	$query = $pdo->prepare($category);
	// execution de la requête
	$query->execute();
	// récupération des données
	$resultcategory= $query->fetchAll();

//Rechercher dans la bdd, les auteurs
	$author = '
				SELECT *
				FROM Author
				ORDER BY FirstName ASC';

// préparation de la requête
	$query = $pdo->prepare($author);
	// execution de la requête
	$query->execute();
	// récupération des données
	$resultauthor= $query->fetchAll();


	$template = 'add_post';
	include 'layout.phtml';
	}





