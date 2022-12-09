$(document).ready(function(){
    const bn =$('.banner');
    const timer = 1500;
    let idx_no = 0; // 현재 보고있는 배너(0번째)

    /* 각 배너 자리 세팅 */
    let mb_width = $('.main_banner').width(); // 메인배너의 전체 가로 크기
    let item_width = mb_width / 1;  // 메인 가로 / 보여줄 칸수
    let b_count = $('.banner').length; // 배너 개수

    for(let i=0; i< b_count; i++) {
        $('.banner').eq(i).css({left: item_width * i})
    }

    $(document).on('click','#btn_slide_R', function(){


        // banner들을 다 한칸씩 이동
        $('.banner').animate({ left: `-=${item_width}` }, timer,'linear');

        // 특정번째(나간거)를 반대쪽 끝으로 이동
        $('.banner').eq(idx_no % b_count).animate({
            left: mb_width
        },0)
        idx_no+=1;

        // 인디케이터 색변경
        $('.circle').removeClass('circle_active')
        $('.circle').eq(idx_no % b_count).addClass('circle_active')

    });
    $(document).on('click','#btn_slide_L', function(){

        // 특정번째(나가있는거/끝번꺼) 반대쪽 끝으로 이동

        idx_no-=1;
        $('.banner').eq(idx_no % b_count).animate({
            left: -1*item_width
        },0)

        // banner들을 다 한칸씩 이동
        $('.banner').animate({ left: `+=${item_width}` }, timer,'linear');

        // 인디케이터 색변경
        $('.circle').removeClass('circle_active')
        $('.circle').eq(idx_no % b_count).addClass('circle_active')
    });
    function btn_status() {
        // 버튼 막기
        $('.btn_slide').css({pointerEvents: 'none'})

        // 일정시간 후에 버튼 다시 살리기
        setTimeout(() => {
            $('.btn_slide').css({pointerEvents: 'auto'})
        }, timer);
    }

    // 자동 슬라이드
    let interval ="";
    function auto_slide() {
        interval = setInterval(()=>{
            $('#btn_slide_R').trigger('click')
        }, timer + 1500) // 500은 멈춰있을 시간
    }
    auto_slide();

    // 마우스 오버시 자동 슬라이드 멈춤
    $('.main_banner').hover(function(){
        clearInterval(interval)
    }, function(){
        auto_slide()
    });

    /*******************************************/
    /***** 인디케이터 초기화 *****/
    let b_length = $('.banner').length;
    for(let i=0; i<b_length; i++) {
        $('.circle_indicator').append('<div class="circle"></div>')
    }
    $('.circle').eq(0).addClass('circle_active')
    /*******************************************/

    // 인디케이터 클릭
    $(document).on('click','.circle', function(){
        // 현재 보고거랑 몇칸 차이 나는건지
        let indi_gap = $(this).index() - $('.circle_active').index();

        // 현재 보고있는 것보다 클릭한게 우측 인지 좌측인지
        // indi_gap가 양수면 우측, 음수면 좌측꺼 누른거임
        if(indi_gap > 0)
            for(let i=0; i<indi_gap; i++)
                $('#btn_slide_R').trigger('click')

        else if(indi_gap < 0)
            for(let i=0; i<indi_gap*-1; i++)
                $('#btn_slide_L').trigger('click')
    });




    /////////////////////////////////////////////////////////////////////////////////////////
    //이벤트 배너(특가)
    $(document).on('click', '.close_img', function(){

        if(!$('.close_img').hasClass('close_active'))
            $('.event_banner').addClass('close_active')

    })




    /////////////////////////////////////////////////////////////////////////////////////

    let count=1;
    // 신상품 더보기
    $(document).on('click', '.new', function(){
        if(count == 1){
            for(let i=0; i<8; i++){
                $('.main_sec_new > .items_area')
                    .append(
                        '<div class="item"><div class="img_box"><img src="../img/main/new1.png" alt="" id="new_img1" ></div><div class="item_txt"><h4>SAMPLE</h4><h5>상품요약 설명</h5><h5><del>000,000원</del></h5><h4>000,000원</h4></div>')
            }
            count++
        }
    })

    let countBest=1;
//인기상품 더보기
    $(document).on('click', '.best', function(){
        if(countBest == 1){
            for(let i=0; i<8; i++){
                $('.main_sec_best > .items_area')
                    .append(
                        '<div class="item"><div class="img_box"><img src="../img/main/best1.png" alt="" id="best_img1" ></div><div class="item_txt"><h4>SAMPLE</h4><h5>상품요약 설명</h5><h5><del>000,000원</del></h5><h4>000,000원</h4></div>')
            }
            countBest++
        }
    })


});
