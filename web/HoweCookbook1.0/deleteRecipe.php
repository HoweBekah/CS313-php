<?php
require "connectDB.php";
$db = connect_db();
session_start();

$query = 'SELECT * FROM recipes WHERE recipe_id =' . $_GET['recipeid'];
$stmt = $db->prepare($query);
$stmt->execute();
$recipeInfo = $stmt->fetch(PDO::FETCH_ASSOC);
$recipeid = $recipeInfo['recipe_id'];

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="CSS/main.css" />
    <title>Delete Recipe | Howe Cookbook</title>
</head>

<body>
    <div id="content">

        <header>
            <img src="images/bannerpicforcookbook.png" alt="10 kids of the howe family." id="bannerPic">
            <a href="index.php">
                <h1 id="howeHeader">Howe Family Cookbook</h1>
            </a>
        </header>

        <main>

            <h1 id="pageTitle">Delete <?php echo $recipeInfo['recipe_name']; ?></h1>

            <form method="POST">

                <h1><?php echo $recipeInfo['recipe_name']; ?></h1>

                <h2>Ingredients:</h2>

                <ul id="ingred">
                    <?php
foreach ($db->query('SELECT ingredient FROM ingredients WHERE recipe =' . $recipeInfo['recipe_id']) as $row) {

    echo "<li>" . $row['ingredient'] . "</li>";}
echo $recipeInfo['ingredients'];
?>
                </ul>

                <h2>Instructions:</h2>

                <p id="instruct">
                    <?php echo $recipeInfo['instructions']; ?>
                </p>

                <input class="addUpdate" type="submit" value="Delete Recipe" name='delRecipe'>
                <input type='hidden' name='recipeId' <?php echo "value= " . $recipeInfo['recipe_id'] ?>>
            </form>
            <?
$recid = $_GET['recipeId'];
echo $_POST['recipeId'];
$query1 = 'DELETE FROM recipes WHERE recipe_id =:recipeid';
$stmt1 = $db->prepare($query1);
$stmt1->bindValue(':recipe_id', $recid, PDO::PARAM_INT);
$stmt1->execute();
header('Location: categoryRecipes.php');
die()?>
        </main>

        <footer>

            <h4>
                &copy;2019 | Howe Family Cookbook | Created by Bekah Howe
            </h4>

        </footer>

    </div>
</body>

</html>