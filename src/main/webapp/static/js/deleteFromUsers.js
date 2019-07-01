function deleteFromMenu(id) {
    $("#us_"+id).remove();
    $.ajax({
        url: "/admin/users?id=" + id,
        type: "post",
        data: "id=" + id,

    })
}