$(document).ready(function () {

    if($('#w_memberId').val() == "") {
        alert("로그인 페이지로 이동합니다.");
        location.href = "/login/login"
        return
    }

    $(".wish_wish").on("click", function () {
        const targetData = $(this).attr("target-data").split(",");
        const loginId = targetData[0];
        const productNumber = targetData[1];
        const result = confirm("찜 목록에서 삭제하시겠습니까?");
        if (result) clickDibs(this, loginId, productNumber, true);
    });

    $(".all").on("click", function () {
        const result = confirm("찜 목록을 비우시겠습니까?");
        if (result) clickAll();
    });


    // 선택 삭제
    $("#btn_pro_del").click(function (){
        const checkList = $(".w_chk:checked");
        let url = "/wishlist/partial-delete/";

        if (checkList.length == 0) {
            alert("삭제할 상품을 선택해 주세요.");
            return;
        }
        if (checkList.length >= 1) {
            const chkConfirm = confirm("선택한 상품을 삭제하시겠습니까?")
            if(chkConfirm == true) {
                console.log("elem");
                checkList.each(function (index, elem) {
                    url += elem.value+","
                })

                $.ajax({
                    type: 'DELETE',       // 요청 메서드
                    url: url,  // 요청 URI
                    success: function (res) {
                        location.reload();
                    },
                    error: function (xhr, err) {
                        console.log(err)
                    }
                });
            }
        }
    })
})

// 하나씩 삭제
function clickDibs(elem, loginId, product_number, isWishlist) {
    $.ajax({
        type: 'POST',       // 요청 메서드
        url: '/wishlist/',  // 요청 URI
        data: JSON.stringify({"productNumber": product_number, "isWishlist": isWishlist}),
        headers: {"Content-Type": "application/json"}, // 요청 헤더
        success: function (res) {

            $('#pr' + product_number).remove();
            location.reload();

        },
        error: function (xhr, err) {
            console.log(err)
        }
    });
}

// 전체 삭제
function clickAll() {
    $.ajax({
        type: 'DELETE',       // 요청 메서드
        url: '/wishlist/flush',  // 요청 URI
        headers: {"Content-Type": "application/json"}, // 요청 헤더
        success: function (res) {

            alert("삭제가 완료되었습니다.");
            location.reload();

        },
        error: function (xhr, err) {
            console.log(err)
        }
    });
}
