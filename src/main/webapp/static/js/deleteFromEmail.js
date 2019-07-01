function deleteFromEmail(id) {
    $("#item_"+id).remove();
    $.ajax({
        url: "/admin/emails?id=" + id,
        type: "delete"
    })
}