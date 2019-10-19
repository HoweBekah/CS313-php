<?php  
try {
        
    $dbUrl = getenv('DATABASE_URL');
    // Get the various parts of the DB Connection from the URL
    $dbopts = parse_url($dbUrl);
    $dbHost = $dbopts["host"];
    $dbPort = $dbopts["port"];
    $dbUser = $dbopts["user"];
    $dbPassword = $dbopts["pass"];
    $dbName = ltrim($dbopts["path"],'/');
    // Create the PDO connection
    $db = new PDO("pgsql:host=$dbHost;port=$dbPort;dbname=$dbName", $dbUser, $dbPassword);
    // this line makes PDO give us an exception when there are problems, and can be very helpful in debugging!
    $db->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
}
catch (PDOException $ex) {
    // If this were in production, you would not want to echo
    // the details of the exception.
    echo 'Error!: ' . $ex->getMessage();
    die();
}
session_start();
$query = 'SELECT * FROM recipes WHERE recipe_id ='. $_GET['recipeid'];
$stmt = $db->prepare($query);
$stmt->execute(); 
 $recipeInfo = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="CSS/main.css" />
    <title><?php echo $recipeInfo['recipe_name']; ?> | Howe Cookbook</title>
</head>
<body>
    <div id="content">
<header>
<img src="images/bannerpicforcookbook.png" alt="10 kids of the howe family." id="bannerPic">
<a href="index.php"><h1 id="howeHeader">Howe Family Cookbook</h1></a>
</header>
<main>
   <h1 id="pageTitle"><?php echo $recipeInfo['recipe_name']; ?></h1>
   <ul>
   <?php
    foreach ($db->query('SELECT ingredients FROM recipes WHERE recipe_name = ' . "'" . $recipeInfo['recipe_name'] . "'") as $row) {
     echo "<li>" . $row['ingredients'] . "</li>";
       }
    ?>
</ul>

<p>
    <?php echo $recipeInfo['instructions']; ?>
</p>
    
    </main>
    <footer></footer>
    </div>
</body>
</html>