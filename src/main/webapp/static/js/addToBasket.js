function  addToBasket(id) {
    $.ajax({
        url:"/user/menu",
        type: "post",
        data: "id=" + id,
        error:function () {
            alert("error");
        }
    })

}