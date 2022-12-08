$(function () {
  let cate_box = $(".major_selector");
  let btn_expand = $(".btn_expand");

  if (cate_box.children().length > 10) {
    cate_box.addClass("fold");
    btn_expand.css({ display: "block" });
  }
  btn_expand.click(function () {
    if (cate_box.hasClass("fold")) {
      cate_box.removeClass("fold");
      $(this).text("∧");
    } else {
      cate_box.addClass("fold");
      $(this).text("∨");
    }
  });
  $('.major').on('click', function (){
    $('.major').removeClass("major_checked");
    $(this).addClass("major_checked");
    if($(this).text().includes("전체")){
      $(".cate_subclass").addClass("opt_hidden");
      $(".opt_box").addClass("opt_hidden");
    } else{
      $(".cate_subclass").removeClass("opt_hidden");
      $(".opt_box").removeClass("opt_hidden");
    }
  })

  let sort_opt = document.querySelectorAll(".sort_li > button");
  $('.sort_li > button').on('click', function (){
    $('.sort_li > button').removeClass("sort_checked");
  })
});

function getProduct(e){
  location.href = '/deal?product='+e.dataset.prd;
}
$('.product_name').on('click', function (){
  $(this).parents('.product').children('.product_img').trigger('click');
})

