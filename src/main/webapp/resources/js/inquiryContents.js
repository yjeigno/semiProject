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
})