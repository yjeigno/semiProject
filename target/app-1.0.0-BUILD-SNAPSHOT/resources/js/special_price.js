
function setGoodsTimer() { //상품 타이머
    const items = document.getElementsByClassName("sprc_item");

    for(item of items){
        const endDate =  new Date(item.getElementsByClassName("h-sprc-end-date")[0].value);
        const timer = item.getElementsByClassName("sprc_timer")[0];
        const now = new Date().getTime();
        const negative = endDate.getTime() < now;
        const total = endDate.getTime() - now;
        const seconds = negative ? '00' : Math.floor( (total / 1000) % 60 ).toString().padStart(2, '0');
        const minutes = negative ? '00' : Math.floor( (total / 1000 / 60) % 60 ).toString().padStart(2, '0');
        const hours = negative ? '00' : Math.floor( (total / (1000 * 60 * 60)) % 24 ).toString().padStart(2, '0');
        const days = negative ? '00' : Math.floor( total / (1000 * 60 * 60 * 24) ).toString();

        if(endDate>now) {
            timer.innerHTML = days + "일 : " + hours + "시 : " + minutes + "분 : " + seconds + "초";
        }
        if(endDate<=now) {
            timer.innerHTML = "해당 특가가 종료되었습니다.";

            let el = document.getElementsByClassName('sprc_item_sale');
            let cur = document.getElementsByClassName('sprc_item_cur');

            for(let i=0; i<el.length; i++) {
                cur[i].innerHTML=el[i].innerText.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");

                document.getElementsByClassName('sprc_item_rate')[i].style.display="none";
                document.getElementsByClassName('sprc_item_sale')[i].style.display="none";
            }
        }
    }
}

function clickDibs(elem, loginId, product_number, isWishlist) {
    if (loginId != "null") {
        const logChk = confirm("로그인 하시겠습니까?")
        if (logChk == true) {
            location.href="/login"
            return
        }
    } else {
        $.ajax({
            type:'POST',       // 요청 메서드
            url: '/wishlist/',  // 요청 URI
            data: JSON.stringify({"productNumber":product_number,"isWishlist":isWishlist}),
            headers : { "Content-Type": "application/json"}, // 요청 헤더
            success : function (res) {
                console.log(res);
                if(isWishlist == false) {
                    $(elem).attr('class','sprc_wish_on')
                }else if(isWishlist == true){
                    $(elem).attr('class','sprc_wish');
                }
            },
            error : function(xhr, err){
                console.log(err)
            } // 에러가 발생했을 때, 호출될 함수
        });
    }
}

$(document).ready(function () {


    // 하트 찜하기
    $(".sprc_wish, .sprc_wish_on").on("click", function() {
        const targetData = $(this).attr("target-data").split(",");
        const loginId = targetData[0];
        const productNumber = targetData[1];

        if($(this).attr('class') === 'sprc_wish') {
            clickDibs(this,loginId,productNumber,false);
        }
        else if($(this).attr('class') === 'sprc_wish_on') {
            const result = confirm("찜 목록에서 삭제하시겠습니까?");

            if(result) clickDibs(this,loginId,productNumber,true);
        }

        location.reload()
    })

    const sprc_tab_nav = $('.sprc_tab_nav');

    // 네비 호버 이벤트
    sprc_tab_nav.hover(function() {
        $(this).css("background-color", "#333");
    },  function() {
        $(this).css("background-color", "#fff");
    })

    sprc_tab_nav.hover(function() {
        $(this).css("color", "#fff");
    },  function() {
        $(this).css("color", "#000");
    })

    // 네비 변경
    sprc_tab_nav.click(function(){
        sprc_tab_nav.css({
            backgroundColor: '#fff',
            color: '#000'
        })
        $(this).css({
            background: '#000',
            color: '#fff'
        })
    })


    setGoodsTimer(); //상품 타이머 최초 실행
    setInterval(setGoodsTimer, 1000);    //상품 타이머 1초 후부터, 1초 간격으로 실행

})





    