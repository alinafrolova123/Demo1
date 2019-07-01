function editDish(id) {
    $.ajax({
        url: "/admin/dishes?id=" + id,
        type: "put"

    })
}