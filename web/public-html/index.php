<?php
try { 
    $objetPdo = new PDO('mysql:host=51.210.44.22:3306;dbname=woody;charset=utf8', 'root', 'root');
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
    <meta charset="utf-8"/>
    <title>Woody Toys</title>
  </head>
  <body>
    <h1>Professionnel du jouet depuis 1960</h1>
    <h2>Nos clients:</h2>
    <div id="clients">
    <?php
    foreach ($clients as $client) {
        echo "<li>" . $client['nom'] . " " . $client['prenom'] . "</li>";
      }
    ?>
    </div>
    <h2>Devenir client</h2>
    <form action="recup_donnees.php" method="post">
      <p>
        <label for="nom">Votre Nom</label>
        <input type="text" id="nom" name="nom" placeholder="Jean">
      </p>
      <p>
        <label for="prenom">Votre prénom</label>
        <input type="text" id="prenom" name="prenom" placeholder="Lecourt">
      </p>
      <p>Vous êtes</p>
      <p>
        <input type="radio" name="sexe" id="sexe" value="homme">
        <label for="sexe">un homme</label>
        <input type="radio" name="sexe" id="sexe" value="femme">
        <label for="sexe">une femme</label>
      </p>
      <p>
        <input type="submit" value="Enregistrer">
      </p>
    </form>
  </body>
</html>
