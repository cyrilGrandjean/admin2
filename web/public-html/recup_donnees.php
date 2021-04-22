<?php

$objetPdo = new PDO('mysql:host=localhost;dbname=woody;charset=utf8', 'root', 'root');

$pdoStat = $objetPdo->prepare('SELECT * FROM clients');

$request = $pdoStat->execute();

$clients = $pdoStat->fetchAll();

?>
