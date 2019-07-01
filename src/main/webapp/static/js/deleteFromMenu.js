function deleteFromMenu(id) {
    $("#item_"+id).remove();
    $.ajax({
        url: "/admin/dishes?id=" + id,
        type: "delete"
    })
}