var book = {};
function init() {
    $.getJSON("../book.JSON", bookOut)
};
function bookOut(data){
    console.log(data);
    var out = '';
    for(var key in data){
        out +='<div class="book">';
        out +=`<p class="name">+data[key].name+</p>`;
        out +=`<p class="bookAuthor">+data[key].bookAuthor+</p>`;
        out +=`<button class="readToBook" data-id="${key}">Читать</button>`;
        out +='</div>';
    }
    $('.book-out').html(out);
};
