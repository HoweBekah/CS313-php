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
$query = 'SELECT category FROM category WHERE catid ='. $_GET['id'];
$db->prepare($query);
$db->execute(); 
 $categoryName = $query->fetch(PDO::FETCH_ASSOC);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="CSS/main.css" />
    <title><?php echo $categoryName; ?> Recipes</title>
</head>

<body>
    <div id="content">
<header>
<img src="images/bannerpicforcookbook.png" alt="10 kids of the howe family." id="bannerPic">
<a href="index.php"><h1 id="howeHeader">Howe Family Cookbook</h1></a>
</header>
    <h1><?php echo $categoryName; ?> Recipes</h1>
    <?php

//echo "<p>" . $_GET['id'] . "</p>";
    foreach ($db->query('SELECT * FROM recipes WHERE category = ' . "'" . $categoryName. "'") as $row) {
     echo "<h3>" . $row['recipe_name'] . "</h3>";
       }
    ?>
    </div>
</body>
</html>