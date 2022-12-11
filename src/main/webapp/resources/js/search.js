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

function mobileFilter(){
  if($(".dimLayer").length == 0){
    $("body").append("<div class='dimLayer'></div>");
    $(".dimLayer").css('height', $(document).height());
    $(".mobile_filter").css({display : "flex"});
  }else {
    return;
  }
}

function mobileSort(){
  if($(".dimLayer").length == 0){
    $("body").append("<div class='dimLayer'></div>");
    $(".dimLayer").css('height', $(document).height());
    $(".mobile_sort").css({display: "flex"});
  } else {
    return;
  }
}
function doSort(){
  let sort = $('input[name="sort"]:checked').val();
  getSearch(1, 20, sort);
}
$(document).mouseup(function (e){
  let layerPopup = $(".mobile_sort");
  if(layerPopup.has(e.target).length === 0){
    layerPopup.css({display : "none"});
    $(".dimLayer").remove();
  }
})