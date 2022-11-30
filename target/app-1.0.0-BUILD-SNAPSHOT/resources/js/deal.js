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
    $('#o_price').text(oPrice.toLocaleString('ko')+"원");
    $('#s_price').text(sPrice.toLocaleString('ko')+"원");
});