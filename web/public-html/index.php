<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8"/>
    <title>Mon super site</title>
  </head>
  <body>
    <h1>Mon super site</h1>
    <h2>Les copains</h2>
    <h2>Devenir un copain</h2>
    <form action="" method="post">
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
