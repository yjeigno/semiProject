$(document).ready(function(){

    const inquiry_type_item_text = $('.inquiry_type_item_text');

    inquiry_type_item_text.click(function(){
        inquiry_type_item_text.css({
            border: '1px solid #F5F5F5',
            backgroundColor: '#F5F5F5',
            color: '#777'
        })
            $(this).css({
                border: '1px solid #000',
                backgroundColor: '#fff',
                color: '#000'
            })
    })

    $('#btn_modify').on("click", function(){
        // 1. 읽기 상태면 수정 상태로 변경
        let frm = $("#frm");

        let isReadOnly = $('input[name="title"]').attr('readonly');
        console.log("isReadOnly: " + isReadOnly)

        if(isReadOnly == "readonly") {
            $('input[name="title"]').attr('readonly',false);
            $('textarea[name="content"]').attr('readonly',false);
            $('#btn_modify').text("등록");
            $('h2').text("게시물 수정");
            return; // 버튼이 '수정' 상태일때는 글자만 바꾸고 readonly 였던것들 풀어주면 됨.
            // 아래 코드들은 '수정' 버튼이 '등록' 버튼으로 바뀐 상태에서 '등록' 눌렀을때 동작해야함
        }

        // 2. 수정 상태면, 수정된 내용 서버로 전송(업데이트)
        frm.attr('action', "<c:url value='/board/modify'/>");
        frm.attr('method', 'post');
        frm.submit();
    })
})

const inquireContentsSubmit = function(form) {
    if (!form['qna_category'].value) {
        alert('배송 유형을 선택 하세요.');
        return;
    }
    if (!form['qna_title'].value || !form['qna_content'].value) {
        alert('제목과 내용을 입력 하세요.');
        return;
    }
    form.submit();
};
