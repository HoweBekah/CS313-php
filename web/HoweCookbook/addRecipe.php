<?php
require "connectDB.php";
$db = connect_db();
session_start();

/*$recipename = filter_input(INPUT_POST, 'addrecipe', FILTER_SANITIZE_STRING);
$recipeinstruct = filter_input(INPUT_POST, 'instruct', FILTER_SANITIZE_STRING);
$recipecat = filter_input(INPUT_POST, 'catAdd', FILTER_SANITIZE_STRING);

addRec($recipename, $recipeinstruct, $recipecat);

function addRec($recipename, $recipeinstruct, $recipecat)
{
$sql2 = 'INSERT INTO recipes (recipe_name, instructions, category) VALUES(:recipe_name, :instructions, :category);';
$stmt2 = $db->prepare($sql2);
$stmt2->bindValue(':recipe_name', $recipename, PDO::PARAM_STR);
$stmt2->bindValue(':instructions', $recipeinstruct, PDO::PARAM_STR);
$stmt2->bindValue(':category', $recipecat, PDO::PARAM_STR);
$stmt2->execute();}*/

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="CSS/main.css" />
    <title> Add Recipe | Howe Cookbook</title>
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
            <h1 id="pageTitle">Add New Recipe</h1>

            <form id="recipeform" method="post" action="categoryRecipes.php">
                <div id="formcontent">
                    <label class="nameGrid" for="recAdd">Recipe Name:</label>
                    <input class="nameGrid" type="text" name="addrecipe" id="recAdd" required /><br />
                    <label class="catGrid">Category:</label>
                    <select class="catGrid" name="catAdd"><?php
'<option selected disabled>Select One</option>';
foreach ($db->query('SELECT * FROM category') as $row) {
    echo "<option>" . $row['category'] . "</option>";
}?>

                    </select>

                    <label class="ingGrid" for="ingred">Ingredients:</label>

                    <input type='text' name='ingred' class="ingGrid" />



                    <label class="instGrid" for="instruct">Instructions:</label>
                    <textarea class="instGrid" name="instruct" id="instruct" rows="3" cols="20"
                        required></textarea><br />
                </div>
                <input class="addUpdate" type="submit" name="submit" id="submit" value="Add Recipe" />

            </form>
        </main>
        <footer>
            <h4>
                &copy;2019 | Howe Family Cookbook | Created by Bekah Howe
            </h4>
        </footer>
    </div>
</body>

</html>