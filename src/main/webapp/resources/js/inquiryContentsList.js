$(document).ready(function (){
    // 글쓰기

    $('.btn_accent').on("click", function(){
        // alert("<c:url value='/board/write'/>");
        // 우리는 Post 방식으로 보내야함.
        let frm = $(".frm");
        frm.attr('action', "<c:url value='/inquiryContents/write'/>");
        frm.attr('method', 'post');
        frm.submit();
    })
})
