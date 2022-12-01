$(document).ready(function(){
    let basket = {
        totalCount: 0,
        totalPrice: 0}
    //장바구니 아이콘 클릭 이벤트
    $(document).on('click', '.basket_min', function(){

        if(!$('.basket_box').hasClass('basket_active'))
            $('.basket_box').addClass('basket_active')
        else
            $('.basket_box').removeClass('basket_active')
    })
});