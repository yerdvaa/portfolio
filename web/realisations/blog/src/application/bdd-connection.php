<?php

// connexion à la base de données
	$dsn = 'mysql:host=127.0.0.1;dbname=creartdev';
	$user = 'root';
	$pwd = 'Poupette11!';

// création de l'objet PDO qui représente la connexion à la base de données
$pdo = new PDO($dsn, $user, $pwd,  [
	    	PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
	        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
	    ]);
$pdo->exec('SET NAMES UTF8');