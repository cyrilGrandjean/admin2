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
    <meta charset="utf-8"/>
    <title>Woody Toys</title>
  </head>
  <body>
    <h1>Intranet Woody Toys</h1>
    <h2>Commandes:</h2>
    <div id="Commandes">
    <?php
    foreach ($Commandes as $Commande) {
        echo "<li>" . $Commande['nom'] . " " . $Commande['client'] . "</li>";
      }
    ?>
    </div>
    <h2>Devenir client</h2>
    <form action="#" method="post">
      <p>
        <label for="nom">Votre Nom</label>
        <input type="text" id="nom" name="nom" placeholder="Mathioux">
      </p>
      <p>
        <label for="client">Votre prénom</label>
        <input type="text" id="client" name="client" placeholder="Licorne">
      </p>
      <p>
        <input type="submit" value="Enregistrer">
      </p>
    </form>
    <?php
      if (isset($_POST['nom'], $_POST['client'])){
        $requete_insertion = $objetPdo -> prepare('INSERT INTO commandes(nom, client) VALUES (:n, :p)');
        $requete_insertion -> execute(array(
          'n' => $_POST["nom"],
          'p' => $_POST["prenom"]
        ));
      }
    ?>
  </body>
</html>