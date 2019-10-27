<?php
require "connectDB.php";
$db = connect_db();

session_start();

$sql1 = 'SELECT * FROM recipes WHERE recipe_id = ' . $_GET['recipe_id'] . "'";
$stmt1 = $db->prepare($sql1);
$stmt1->execute();
$recipeInfo = $stmt1->fetch(PDO::FETCH_ASSOC);
$recipeid = $recipeInfo['recipe_id'];
$recipename = $recipeInfo["recipe_name"];
$recipeinstruct = $recipeInfo["instructions"];
$recipecat = $recipeInfo["category"];

//updateIngredients($recipeid);

$sql2 = 'UPDATE recipes SET recipe_name = :recipe_name, instructions = :instructions, category = :category WHERE recipe_id = :recipe_id';
$stmt2 = $db->prepare($sql2);
$stmt2->bindValue(':recipe_id', $recipeid, PDO::PARAM_INT);
$stmt2->bindValue(':recipe_name', $recipename, PDO::PARAM_STR);
$stmt2->bindValue(':instructions', $recipeinstruct, PDO::PARAM_STR);
$stmt2->bindValue(':category', $recipecat, PDO::PARAM_STR);

$stmt2->execute();

/*function updateIngredients($recipe_id)
{

$ingLoop = 'FOR ingredient IN SELECT ingredient FROM ingredients WHERE recipe =' . $recipe_id .
'LOOP' .
$sql . " =" . 'UPDATE ingredients SET ingredient = :ingredient WHERE recipe_id = :recipe_id' . ";"
. $stmt . '=' . $db->prepare($sql) . ';'
. $stmt->bindValue(':recipe_id', $recipe_id, PDO::PARAM_INT) . ';'
. $stmt->execute() . ';'
// Close the database interaction
. $stmt->closeCursor() . ';'
. 'END LOOP;';
return $ingLoop;
}*/
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="CSS/main.css" />
    <title><?php if (isset($recipeInfo['recipe_name'])) {
    echo "Modify $recipeInfo[recipe_name]";
} elseif (isset($recipe_name)) {
    echo $name;
}?> | Howe Cookbook</title>
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
            <h1 id="pageTitle"><?php if (isset($recipeInfo['recipe_name'])) {
    echo "Modify $recipeInfo[recipe_name] ";
} elseif (isset($recipe_name)) {
    echo $recipe_name;
}?></h1>
            <form id="prodform" method="post" action="recipeDetails.php">
                <fieldset>
                    <legend><?php if (isset($recipeInfo['recipe_name'])) {
    echo "Modify $recipeInfo[recipe_name] ";
} elseif (isset($recipe_name)) {
    echo $recipe_name;
}?></legend>
                    <div id="inputs">
                        <div id="leftfield">

                            <label for="recAdd">Recipe Name:</label>
                            <input type="text" name="addrecipe" id="recAdd" <?php if (isset($recipe_name)) {
    echo "value='$recipe_name'";
} elseif (isset($recipeInfo['recipe_name'])) {
    echo "value='$recipeInfo[recipe_name]'";
}?> required /><br />
                            <label>Category:</label>
                            <select><?php
'<option selected>' . $recipeInfo['category'] . '</option>';
foreach ($db->query('SELECT * FROM category NOT ' . $recipeInfo['category'] . "'") as $row) {
    echo "<option>" . $row['category'] . "</option>";
}?>

                            </select>

                            <label for="ingred">Ingredients:</label>
                            <?php
foreach ($db->query('SELECT ingredient FROM ingredients WHERE recipe = ' . $recipeInfo['recipe_id'] . "'") as $row) {
    echo "<input type= 'text' name ='ingred' class ='updateIng'" . $row['ingredient'] . ">";
}?>


                            <label for="instruct">Instructions:</label>
                            <textarea name="instruct" id="instruct" rows="3" cols="20" required><?php/* if (isset($instructions)) {
echo $instructions;
} elseif (isset($recipeInfo['instructions'])) {
echo $recipeInfo['instructions'];
} */?></textarea><br />



                            <input type="submit" name="submit" id="submit" value="Update Recipe" />
                            <input type="hidden" name="action" value="updateProd">
                            <!-- <input type="hidden" name="invId" value="<?php //if (isset($recipeInfo['recipe_id'])) {
// echo $recipeInfo['recipe_id';
// } ?>">-->
                </fieldset>
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