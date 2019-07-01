function makePayment() {
    $.ajax({
        url: "/user/bill",
        type: "post"
    })
}