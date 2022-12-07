$(document).ready(function(){

    // 포토 버튼 클릭하면 포토게시판 나오기
    // 텍스트 버튼 클릭하면 텍스트게시판 나오기
    // 포토 버튼 클릭하면 보더 포토에만 나오고 나머지 안나오게 배경색 변경
    tap_chg($('#photo_btn'),$('.list_photo'),$('#text_btn'),$('.list_text'))
    tap_chg($('#text_btn'),$('.list_text'),$('#photo_btn'),$('.list_photo'))
    function tap_chg(cl_btn,in_di,non_cl,out_di){
        cl_btn.click(function(){
            cl_btn.css({
                border: 'solid #000' ,
                borderWidth: '1px 1px 0 1px',
                color: '#000'
            })
            in_di.css({
                display: 'block',
            })
            non_cl.css({
                border: 'solid #000' ,
                borderWidth: '0 0 1px 0',
                color: '#888'
            })
            out_di.css({
                display: 'none'
            })
        })
    }


    // 이미지 호버하면 테두리 생김 , 그림 1.2배
    ho_photo()
    function ho_photo(){
        $('.photo_review_img > img').mouseenter(function(){
            $(this).css({
                transition: 'all 0.3s',
                transform: 'scale(1.2)'
            })
        });
        $('.photo_review_img > img').mouseleave(function(){
            $(this).css({
                transition: 'all 0.3s',
                transform: 'scale(1)'
            })
        });
    }
    // 리뷰박스 클릭하면 전체 글 보여줌
    // 페이지네이션

})