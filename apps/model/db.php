<?php

include 'db.php';

try{

// A changer : dbname=nomDeVotreBaseDeDonnÃ©es
$bdd = new PDO('mysql:$servername;dbname=bookinons;charset=utf8', '$username', '$password');
}
// On traite l'erreur (ex probleme de mot de passe, php rsique d'afficher
// toute la ligne. Pour Ã©viter ce problÃ¨me : )
catch (Exception $e)
{
        die('Erreur : ' . $e->getMessage());
}
// Notre requete Ã  la base de donnÃ©e
// SELECT = prend moi; * = tout ;FROM = de quel tableau ? film = mettreLeNomDeVotreTable
$reponse = $bdd->query('SELECT * FROM books');
// Pour que mySql ne traite cette rÃ©ponse ligne par ligne, c'est Ã  dire par entrÃ©e.
// fetch veut dire en anglais "va chercher"
// On le met dans une boucle qui va etre rÃ©pÃ©tÃ©e autant de fois qu'il y a d'entrÃ©e
while ($donnees = $reponse->fetch())
{
// Je ferme php pour pouvoir mettre de l'html
?>

<p>
<!-- changer ce qu'il y a dans $donnees[]
et mettre le nom de la colonne(de votre tableau dans la db) que vous voulez cibler -->
<strong> Le titre  du livre est : </strong><?php echo $donnees['title']; ?><br />
</p>

<!-- Fin: pour terminer la requete, refaire une balise php-->
<?php
}

$reponse->closeCursor(); // Termine le traitement de la requÃªte

?>