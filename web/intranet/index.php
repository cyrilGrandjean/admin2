
<?php
try {
    $objetPdo = new PDO('mysql:host=192.168.10.2;dbname=woody;charset=utf8', 'root', 'root');
    echo "connect OK";
    $pdoStat = $objetPdo->prepare('SELECT * FROM clients');
    $request = $pdoStat->execute();
    $clients = $pdoStat->fetchAll();

} catch (PDOException $e) {
    echo $e;
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Ceci est une page de test avec des balises PHP</title>
    <meta charset="utf-8" />
</head>
<body>
<h2>Page de test</h2>

<p>
    Cette page contient du code HTML avec des balises PHP.<br />
    <?php echo "Ceci est du texte"; ?>
    Voici quelques petits tests :
</p>

<ul>
    <li style="color: blue;">Texte en bleu</li>
    <li style="color: red;">Texte en rouge</li>
    <li style="color: green;">Texte en vert</li>
</ul>

<?php
    echo "Ceci est du texte";
?>
</body>
</html>