<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>View Cart</title>
</head>
<body>
<header>
    <?php include('header.php') ?>
    </header>
    <main>
        <div id="cartItems">

        </div>
        <div id="cartBtns">
        <input type="button" value="Continue Shopping" class="cartBtns" onclick="location.href='itemBrowse.php';">
        <input type="button" value="Checkout" class="cartBtns" onclick="location.href='checkout.php';">
        </div>
    </main>
    <footer></footer>
</body>
</html>