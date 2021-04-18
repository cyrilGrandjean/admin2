<?php
if (isset($_POST['submit'])){
  $nom = $_POST['nom'];
  $prenom = $_POST['prenom'];
  $sexe = $_POST['sexe'];
  echo '<h3>infos</h3>';
  echo 'Nom: ' . $nom . 'Prenom: ' . $prenom . 'Sexe: ' . $sexe;
}
echo 'not set'
?>
