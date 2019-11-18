<?php
require "connectDB.php";
$db = connect_db();

session_start();
$query = 'SELECT category FROM category WHERE catid =' . $_GET['id'];
$stmt = $db->prepare($query);
$stmt->execute();
$categoryName = $stmt->fetch(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="CSS/main.css" />
    <title><?php echo $categoryName['category']; ?> Recipes | Howe Cookbook</title>
</head>

<body>
    <div id="content">
        <header>
            <img src="images/bannerpicforcookbook.png" alt="10 kids of the howe family." id="bannerPic">
            <a href="index.php">
                <h1 id="howeHeader">Howe Family Cookbook</h1>
            </a>
        </header>
        <h1 id="pageTitle"><?php echo $categoryName['category']; ?> Recipes</h1>
        <ol id="recipesOL">
            <?php
foreach ($db->query('SELECT * FROM recipes WHERE category = ' . "'" . $categoryName['category'] . "'") as $row) {
    $url = "recipeDetails.php?" . "recipeid=" . $row['recipe_id'];
    echo "<a href='$url'><li>" . $row['recipe_name'] . "</li></a>";
}
?>
        </ol>
        <form id="addform" method="post" action="addRecipe.php">
            <input class="addUpdate" type="submit" value="Add Recipe">
        </form>
    </div>
    <?php
foreach ($db->query('SELECT * FROM ingredients WHERE recipe_id =' . $_GET['recipeid']) as $row) {

    echo "<li>" . $row['ingredient'] . "</li>";}
?>
    <footer>
        <h4>
            &copy;2019 | Howe Family Cookbook | Created by Bekah Howe
        </h4>
    </footer>
</body>

</html>