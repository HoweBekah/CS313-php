<?php  
require "connectDB.php";
$db = connect_db();

session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="CSS/main.css" />
    <title>Home | Howe Cookbook</title>
</head>
<body>
    <div id="content">
<header>
<img src="images/bannerpicforcookbook.png" alt="10 kids of the howe family." id="bannerPic">
<a href="index.php"><h1 id="howeHeader">Howe Family Cookbook</h1></a>
</header>
<main>
<h1 id="pageTitle">Categories</h1>
    <div id="mainBTNdiv">
    <?php
    foreach ($db->query('SELECT * FROM category') as $row) {
        $url = "categoryRecipes.php?" ."id=" . $row['catid'];
     echo "<a href='$url' class='categorybtns'>" . $row['category'] . "</a>";
   
       }
    ?>
    </div>
    </main>
    <footer>
        <h4>
            &copy;2019 | Howe Family Cookbook | Created by Bekah Howe
    </h4></footer>
    </div>
</body>
</html>