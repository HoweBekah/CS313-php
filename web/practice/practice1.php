<!DOCTYPE html>
<head>
</head>
<body>
	<h1>Scripture Resources</h1>
<?php
	
	/*foreach ($db->query('SELECT * FROM Scriptures') as $row)
	{
  		echo "<b>" . $row['book'] . " " . $row['chapter'] . ":" . $row['verse'] . " - </b>";
            echo '"' . $row['content'] . '"<br><br>';
	}*/
	if (isset($_POST['book'])) {
		try
	{
  		$dbUrl = getenv('DATABASE_URL');
  		$dbOpts = parse_url($dbUrl);

  		$dbHost = $dbOpts["host"];
  		$dbPort = $dbOpts["port"];
  		$dbUser = $dbOpts["user"];
  		$dbPassword = $dbOpts["pass"];
  		$dbName = ltrim($dbOpts["path"],'/');
  		$db = new PDO("pgsql:host=$dbHost;port=$dbPort;dbname=$dbName", $dbUser, $dbPassword);
  		$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$book = $_POST['book'];
	}
	catch (PDOException $ex)
	{
  		echo 'Error!: ' . $ex->getMessage();
  		die();
	}
	foreach ($db->query("SELECT * FROM scriptures WHERE scriptures.book = '$book'") as $row) {
		$url = "results1.php?" ."id=" . $row['id'];
		echo "<b><a href=\"$url\">" . $row['book'] . " " . $row['chapter'] . ":" . $row['verse'] . "</a></b><br/>";
	}
}
​
?>
​
	<form name="search" action="practice1.php" method="post">
		Search Book: <input type="text" name="book" /> <input type="submit" value="Search"><br/>
	</form>
</body>