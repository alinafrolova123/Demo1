function deleteFromBasket(id) {
    $("#item_"+id).remove();
    $.ajax({
        url: "/user/buy?id=" + id,
        type: "delete"
    })
}