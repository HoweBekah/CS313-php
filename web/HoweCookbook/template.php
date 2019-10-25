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
    <title> | Howe Cookbook</title>
</head>
<body>
    <div id="content">
<header>
<img src="images/bannerpicforcookbook.png" alt="10 kids of the howe family." id="bannerPic">
<a href="index.php"><h1 id="howeHeader">Howe Family Cookbook</h1></a>
</header>
<main>
   <h1 id="pageTitle"></h1>
    
    </main>
    <footer></footer>
    </div>
</body>
</html>