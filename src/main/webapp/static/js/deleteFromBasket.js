function  deleteFromBasket(id) {
    var $tr = $(this).closest('tr');
    $.ajax({
        url: "/user/buy",
        type: "post",
        data: "id=" + id,
        error: function () {
            alert("error");
        },
        success: function(result) {
            if (result.Success) {
                $(obj).closest("tr").remove(); // You can remove row like this
            }
            eval(result.Script);
        }
    })
}