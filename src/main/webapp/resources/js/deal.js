let product_list_number = 0;

$(document).ready(function(){

    // 탭버튼,top버튼 클릭시 해당섹션으로 이동
    let menu_h = $('.d_tab_btn').innerHeight()
    $('.d_tab_btn a , .btn_top a').click(function(e){
        e.preventDefault();
        let href = $(this).attr('href');
        console.log(href)
        let tmp;
        if($('.d_tab_btn').css({position:'fixed'})?tmp=50:tmp=100);
        let pos = $(href).offset().top -tmp;
        console.log(pos)
        $('html, body').animate({
            scrollTop: pos - menu_h
        }, 1000);
    })

    // 스크롤 내려가면 탭버튼 고정
    let h_top = $('ul.d_tab_btn').offset().top;
    $(window).scroll(function(){
        let s_top = $(window).scrollTop() + 100;
        // console.log(h_top,s_top)

        if(h_top <= s_top){
            $('.d_tab_btn').css({
                position: 'fixed',
                zIndex: 999999999,
                left: 25,
                top: 150,
                flexDirection: 'column',
                width:'15%'
            })
            $('.d_tab_btn> li').css({
                width:'100%'
            })
        }
        else{
            $('.d_tab_btn').css({
                position: 'relative',
                left: 0,
                top: 0,
                flexDirection: 'row',
                width:'100%'
            });
            bg_reSet(tab_btn,'#ddd','#000')
        }
    })

    //가격을 한화로 표시
    $('#o_price').text(oPrice.toLocaleString('ko')+"원");
    $('#s_price').text(sPrice.toLocaleString('ko')+"원");

    // 이미지 슬라이드 ,인디게이터
    let index_no = 0;
    let timer = 1000;
    let i_length = $('.d_img').length;

    // 버튼 막기
    function btn_status() {
        $('.d_indi_btn').css({pointerEvents: 'none'})
        setTimeout(() => {
            $('.d_indi_btn').css({pointerEvents: 'auto'})
        }, timer);
    }
    function slide(o_index, o_pos, c_index, c_pos, next_index) {
        btn_status();
        // 나갈판
        $('.d_img').eq(o_index).animate({
            left: o_pos
        }, timer);

        // 들어올 판
        $('.d_img').eq(c_index).css({
            left: c_pos
        }).animate({
            left: 0
        }, timer);

        index_no=next_index;
        $('.d_indi_btn').removeClass('indi_active');
        $('.d_indi_btn').eq(index_no % i_length).addClass('indi_active')
    }

    //인디게이터 삽입
    $('.d_indi_btn').eq(0).addClass('indi_active')
    $('.d_img').eq(0).css({ left: 0});

    // 인디케이터 클릭
    $('.d_indi_btn').click(function(){
        // console.log($(this).index() , $('.indi_active').index())

        let tmp_index = $(this).index()

        if(tmp_index > $('.indi_active').index()) {
            slide(index_no, '-100%', tmp_index, '100%',  tmp_index)
        }
        else if(tmp_index < $('.indi_active').index()) {
            slide(index_no, '100%', tmp_index, '-100%',  tmp_index)
        }
    });

    // 사이즈버튼 클릭하면 클릭된 사이즈 배경색,글씨색 바뀜 다른거 선택하면 초기화

    let SizeClick = $('.sclick')


    SizeClick.click(function (){
        let sc = this.style.background
        bg_reSet(SizeClick,'#ddd','#777')
        if(sc != 'gray') {
            $(this).css({
                background:'gray',
                color: '#fff'
            })
        }
    })
    let tab_btn = $('.small_btn')

    tab_btn.click(function (){
        let sc = this.style.background
        bg_reSet(tab_btn,'#ddd','#000')
        if(sc != 'gray') {
            $(this).css({
                background:'gray',
                color: '#fff'
            })
        }
    })

    // 색상 초기화
    function bg_reSet(name,bg,font){
        console.log(name.length)
        for(let i =0; i<name.length ; i++){
            name.eq(i).css({
                background: bg,
                color: font
            })
        }
    }
    $(document).on("click", ".cClick", function (e) {
        //console.log("test")
        let list_count = $('.opt_selected').children().length;
        let color_id =$(this).attr("id");
        let index_no = $(this).attr("id").split(",")[1];

        console.log("index : " + index_no);
        if(list_count > 0) {
            let class_dupl_chk = false;

            for(let i=0; i<list_count; i++) {
                class_dupl_chk = $('.opt_selected').children('.sel_color_box').eq(i).hasClass(color_id);
                if(class_dupl_chk) break;
            }
            if(class_dupl_chk) {
                alert("이미 선택한 옵션 입니다.")
            }
            else {
                make_opt_list(color_id,index_no)

            }
        }
        else {
            make_opt_list(color_id,index_no)
        }
        total();
    })
    function make_opt_list(color_id,index_no) {
        $('.opt_selected').append(
            `<div class="sel_color_box ${color_id}">
<!--                <form action="/purchase" method="post">-->
                    <div class="opt_name">                    
                        <div id='optionTitle${[product_list_number]}'>${optTitle}</div>
                        <div id='color${[product_list_number]}'>${colorSizeText[index_no]} / ${colorNameText[index_no]}</div>
                    </div>
                    <div class="opt_qty">
                        <input type="button" class="btn_qty txt_minus" value="-">
                        <input type="text" id="pa${product_list_number}" name="product_amount" class="txt_qty" value="1" readonly>
                        <input type="button" class="btn_qty txt_plus" value="+">
                        <div class="x_btn"><img src=${deleteBtn} alt="" class="btn_price_delete"></div>
                        <input type="text" value="${$(this).index()}" title="${index_no}" class="chk_item_order">
                    </div>
                
                    <div class="opt_price">
                        <div>${sPrice.toLocaleString('ko')}원</div>
                        <input type="hidden" value="${sPrice}" id="price${[product_list_number]}">
                    </div>
<!--                </form>-->
            </div>`
        );
        //console.log("hi : " + index_no);
        product_list_number ++;
        console.log("product_list_number : " + product_list_number);
    }
    // 버튼 클릭하면 + - 되는 기능
    $(document).on('click','.btn_qty', function(){
        qty_chg($(this).val(), $(this));
        total();
    })
    function qty_chg(tmp_mark, el) {
        if(tmp_mark=="+") {
            // console.log(el.prev());
            let curr_qty= +el.prev().val();
            el.prev().val(curr_qty+1)
        }
        else if(tmp_mark=="-") {
            // console.log(el.next())
            let curr_qty= +el.next().val();
            if(curr_qty - 1 <1) {
                alert("최소 주문 수량은 1개 입니다.");
            }
            else {
                el.next().val(curr_qty-1)
            }
        }
    }
    // 버튼 클릭하면 삭제
    $(document).on('click','.btn_price_delete', function(){
        $(this).parent().parent().parent('.sel_color_box').remove();
        total();
    })

    function total() {
        let final_total = 0;
        let final_qty=0;
        let list_count = $('.opt_selected').children().length;

        if(list_count > 0) {
            for(let i=0; i<list_count; i++) {
                final_qty += +$('.opt_selected').children('.sel_color_box').eq(i).children('.opt_qty').children('.txt_qty').val();
                final_total += +$('.opt_selected').children('.sel_color_box').eq(i).children('.opt_qty').children('.txt_qty').val() * sPrice;
            }
            let p_tot = final_total.toLocaleString('ko');
            $('.d_total_price').html(`<div>TOTAL: <span id="p_tot">${p_tot} 원</span> (${final_qty}개)</div>`)
        }
        else {
            $('.d_total_price').html(`<div>TOTAL: <span id="p_tot">0원</span> (0개)</div>`)
        }
    }
    // 상품문의 슬라이드
    $('.d_qna_faq_box').click(function(){
        let faq_view = $(this).parent('.d_qna_top').next('.d_qna_faq_view').children('.d_qna_faq_view_qa')
        if(faq_view.children('.d_qna_faq_q').css("display") == "block"){
            $(this).children('.d_qna_faq').children('.d_qna_faq_tit').removeClass('on')
            faq_view.children('.d_qna_faq_q').slideUp(400);
            faq_view.children('.d_qna_faq_a').slideUp(400);
        }
        else{
            $(this).children('.d_qna_faq').children('.d_qna_faq_tit').addClass('on')
            faq_view.children('.d_qna_faq_q').slideDown(400);
            faq_view.children('.d_qna_faq_a').slideDown(400);
        }
    })


});