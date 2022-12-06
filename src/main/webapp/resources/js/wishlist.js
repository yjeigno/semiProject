$(document).ready(function () {
    $(".wish_wish").on("click", function () {
        const targetData = $(this).attr("target-data").split(",");
        const loginId = targetData[0];
        const productNumber = targetData[1];
        const result = confirm("찜 목록에서 삭제하시겠습니까?");
        if (result) clickDibs(this, loginId, productNumber, true);
    });
})

function clickDibs(elem, loginId, product_number, isWishlist) {
    $.ajax({
        type: 'POST',       // 요청 메서드
        url: '/wishlist/',  // 요청 URI
        data: JSON.stringify({"productNumber": product_number, "isWishlist": isWishlist}),
        headers: {"Content-Type": "application/json"}, // 요청 헤더
        success: function (res) {

            $('#pr'+product_number).remove();
            location.reload();

        },
        error: function (xhr, err) {
            console.log(err)
        }
    });
}