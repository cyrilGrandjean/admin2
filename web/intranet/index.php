<?php
try { 
    $objetPdo = new PDO('mysql:host=192.168.10.2;dbname=woody;charset=utf8', 'root', 'root');
    echo "connect OK";
    $pdoStat = $objetPdo->prepare('SELECT * FROM commandes');
    $request = $pdoStat->execute();
    $commandes = $pdoStat->fetchAll();

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
    <div id="commandes">
    <?php
    foreach ($commandes as $commande) {
        echo "<li>" . $commande['nom'] . " " . $commande['client'] . " " . $commande['prix'] . "</li>";
      }
    ?>
    </div>
    <h2>le Produit</h2>
    <form action="#" method="post">
      <p>
        <label for="nom">Produit</label>
        <input type="text" id="nom" name="nom" placeholder="Mathioux">
      </p>
      <p>
        <label for="client">nom client</label>
        <input type="text" id="client" name="client" placeholder="Licorne">
      </p>
      <p>
        <label for="prix">prix Produit</label>
        <input type="int" id="prix" name="print" placeholder="100">
      </p>
      <p>
        <input type="submit" value="Enregistrer">
      </p>
    </form>
    <?php
      if (isset($_POST['nom'], $_POST['client'], $_POST['prix'])){
        $requete_insertion = $objetPdo -> prepare('INSERT INTO commandes(nom, client, prix) VALUES (:n, :p, :r)');
        $requete_insertion -> execute(array(
          'n' => $_POST["nom"],
          'p' => $_POST["client"],
          'r' => $_POST["prix"]
        ));
      }
    ?>
  </body>
</html>