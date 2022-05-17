var cart = {}; // корзина


function init() {
    //вычитуем файл goods.json
    $.getJSON("goods.json", goodsOut);
}

function goodsOut(data) {
    // вывод на страницу
    console.log(data);
    var out='';
    for (var key in data) {
        out +='<div class="cart">';
        out +=`<p class="name">${data[key].name}</p>`;
        out +=`<a href="goods.html#${key}"><img src="images/${data[key].img}" alt=""></a>`;
        out +=`<div class="cost">${data[key].cost}</div>`;
        out +=`<button class="later" data-id="${key}"><i class="fab fa-gratipay"></i></button>`;
        out +=`<br>`;
        out +=`<button class="add-to-cart" data-id="${key}">read</button>`;
        out +='</div>';
    }
    $('.goods-out').html(out);
    $('.add-to-cart').on('click', addToCart);
    $('.later').on('click', addToLater);
}
function addToLater(){
    //избранные товары
    var later = {};
    if (localStorage.getItem('later')) {
        // если есть - расширфровываю и записываю в переменную cart
        later = JSON.parse(localStorage.getItem('later'));
    }
//    alert('Добавлено в избранное!')
    var id = $(this).attr('data-id');
    later[id] = 1;
    localStorage.setItem('later', JSON.stringify(later));
}
function addToCart() {
    //добавляем товар в корзину
    var id = $(this).attr('data-id');
    // console.log(id);
    if (cart[id]==undefined) {
        cart[id] = 1; //если в корзине нет товара - делаем равным 1
    }
    else {
        cart[id]++; //если такой товар есть - увеличиваю на единицу
    }
    showMiniCart();
    saveCart();
}

function saveCart() {
    //сохраняю корзину в localStorage
    localStorage.setItem('cart', JSON.stringify(cart)); //корзину в строку
}

function showMiniCart() {
    //показываю мини корзину
    var out="";
    for (var key in cart) {
        out += key +' --- '+ cart[key]+'<br>';
    }
    $('.mini-cart').html(out);
}

function loadCart() {
    //проверяю есть ли в localStorage запись cart
    if (localStorage.getItem('cart')) {
        // если есть - расширфровываю и записываю в переменную cart
        cart = JSON.parse(localStorage.getItem('cart'));
        showMiniCart();
    }
}


$(document).ready(function () {
    init();
    loadCart();
});
