$(function () {
  $('.major').on('click', function (){
    $('.major').removeClass("major_checked");
    $(this).addClass("major_checked");
    if($(this).text().includes("전체")){
      $(".size_box").addClass("opt_hidden");
      $(".color_box").addClass("opt_hidden");
    } else{
      $(".size_box").removeClass("opt_hidden");
      $(".color_box").removeClass("opt_hidden");
    }
  })

  let sort_opt = document.querySelectorAll(".sort_li > button");
  $('.sort_li > button').on('click', function (){
    $('.sort_li > button').removeClass("sort_checked");
  })
});

function getProduct(e){
  location.href = '/deal?product_number='+e.dataset.prd;
}
$('.product_name').on('click', function (){
  $(this).parents('.product').children('.product_img').trigger('click');
})

