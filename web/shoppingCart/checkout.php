<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/main.css">
    <title>Checkout</title>
</head>
<body>
    <header>
    <?php include('header.php') ?>
    </header>
    <main>
    <div id="checkBtns">
        <input type="button" value="Return to Cart" class="checkBtns" onclick="location.href='viewCart.php';">
        <input type="button" value="Place Order" class="checkBtns" onclick="location.href='confirmPage.php';">
        </div>
    </main>
    <footer></footer>
</body>
</html>