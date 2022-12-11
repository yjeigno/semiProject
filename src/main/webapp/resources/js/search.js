$(function () {
  // let cate_box = $(".major_selector");
  // let size_box = $(".size_selector");
  // let color_box = $(".color_selector");
  // let cate_btn_expand = $(".cate_box > .btn_expand");
  // let size_btn_expand = $(".size_box > .btn_expand");
  // let color_btn_expand = $(".color_box > .btn_expand");
  //
  // if (cate_box.children().length > 7) {
  //   cate_box.addClass("fold");
  //   cate_btn_expand.removeClass("btn_hidden");
  // } else {
  //   cate_btn_expand.addClass("btn_hidden");
  // }
  // if(size_box.children().length > 7) {
  //   size_box.addClass("fold");
  //   size_btn_expand.removeClass("btn_hidden");
  // } else {
  //   size_btn_expand.addClass("btn_hidden");
  // }
  // if(color_box.children().length > 7) {
  //   color_box.addClass("fold");
  //   color_btn_expand.removeClass("btn_hidden");
  // } else {
  //   color_btn_expand.addClass("btn_hidden");
  // }
  //
  // cate_btn_expand.click(function () {
  //   if (cate_box.hasClass("fold")) {
  //     cate_box.removeClass("fold");
  //     $(this).text("∧");
  //   } else {
  //     cate_box.addClass("fold");
  //     $(this).text("∨");
  //   }
  // });
  // size_btn_expand.click(function () {
  //   if (size_box.hasClass("fold")) {
  //     size_box.removeClass("fold");
  //     $(this).text("∧");
  //   } else {
  //     size_box.addClass("fold");
  //     $(this).text("∨");
  //   }
  // });
  // color_btn_expand.click(function () {
  //   if (color_box.hasClass("fold")) {
  //     color_box.removeClass("fold");
  //     $(this).text("∧");
  //   } else {
  //     color_box.addClass("fold");
  //     $(this).text("∨");
  //   }
  // });

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
  location.href = '/deal?product='+e.dataset.prd;
}
$('.product_name').on('click', function (){
  $(this).parents('.product').children('.product_img').trigger('click');
})

