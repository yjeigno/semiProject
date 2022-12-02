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

    // 사이즈 클릭하면 선택한 사이즈에 테두리 넣어주기
    function bg_rb(){
        for(let i =0; i<$('sclick').length ; i++){
            $('sclick').eq(i).css({
                background: '#ddd'
            })
        }
    }
    $('sclick').click(function (){
        let sc = this.style.background
        bg_rb()
        if(sc != 'gray') {
            $(this).css({
                background:'gray'
            })
        }
    })
});