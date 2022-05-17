function init() {
    //вычитуем файл goods.json
    $.getJSON("goods.json", goodsOut);
}

function goodsOut(data) {
    // вывод на страницу
    console.log(data);
    var out='';
    var later={};
    if (localStorage.getItem('later')) {
        // если есть - расширфровываю и записываю в переменную cart
        later = JSON.parse(localStorage.getItem('later'));
        for (var key in later) {
        out +='<div class="cart">';
        out +=`<p class="name">${data[key].name}</p>`;
        out +=`<img src="images/${data[key].img}" alt="">`;
        out +=`<div class="cost">${data[key].cost}</div>`;
        out +=`<a href="goods.php#${key}">read</a>`;
        out +='</div>';
    }
    $('.goods-out').html(out);
    }
    else{
        $('.goods-out').html('Выберите услугу!');
    }
}


$(document).ready(function () {
    init();
});
