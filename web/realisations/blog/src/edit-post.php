<?php
include 'application/bdd-connection.php';

$template = 'edit-post';

// Si $_POST est vide, alors le formulaire n'a pas été soumis, on l'affiche
	if(empty($_POST))
    {
    	if(!array_key_exists('Id', $_GET) OR !ctype_digit($_GET['Id']))
		{
			header('Location: admin.php');
            exit();
		}
		
		$id = ($_GET['Id']);
		$article =
					'
            SELECT
                *
            FROM
                Post
			WHERE 
				Id = ?
		';
		// préparation de la requête
			$query = $pdo->prepare($article);
			// execution de la requête
			$query->execute(array($id));
			// récupération des données
			$resultArticle= $query->fetch();

		//var_dump($resultArticle);

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

		include 'layout.phtml';

	}
	else {
	$query =
		'
		UPDATE
			Post
		SET
			Title = ?,
			Content = ?,
			Author_Id = ?,
			Category_Id = ?
		WHERE Id = ?
		';
	$resultSet = $pdo->prepare($query);
	$params = 	[
					$_POST['title'],
					$_POST['content'],
					$_POST['author'],
					$_POST['category'],
					$_POST['id'],
				];
	$resultSet->execute($params);

var_dump($params);
	// Retour au panneau d'administration.
        header('Location: admin.php');
        exit();
	}

