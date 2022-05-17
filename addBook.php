<html>
<head>
    <meta charset="UTF-8">
    <title>cart</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<?php include "pages/head.php"?>
<a href="index.html">На главную</a>
<a href="later.html">Избранные товары</a>
<div class="goods-out"></div>
<main>
    <h5>Добавить книгу</h5>
    <p>Название: <input type="text" id="gname"></p>
    <p>Описание: <textarea id="gdescr"></textarea></p>
    <input type="hidden" id="gid">
    <button class="add-to-db">Добавить</button>
</main>
<footer></footer>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/cart.js"></script>
</body>
</html>