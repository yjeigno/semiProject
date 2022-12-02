let sort = document.documentURI.split("sort=")[1];
if(sort==null) $('[data-sort=popular]').addClass("sort_checked");
$('[data-sort='+sort+']').addClass("sort_checked");
let el_major = document.getElementsByClassName("major");

for (let j = 0; j < el_major.length; j++) {
  el_major[j].addEventListener("click", function () {
    for (let k = 0; k < el_major.length; k++) {
      el_major[k].classList.remove("major_checked");
    }
    el_major[j].classList.add("major_checked");
    if ($(".major_checked").text() != "전체") {
      $(".cate_subclass").removeClass("opt_hidden");
      $(".opt_box").removeClass("opt_hidden");
    } else {
      $(".cate_subclass").addClass("opt_hidden");
      $(".opt_box").addClass("opt_hidden");
    }
  });
}

let sort_opt = document.querySelectorAll(".sort_li > li");
for (let i = 0; i < sort_opt.length; i++) {
  sort_opt[i].addEventListener("click", function () {
    for (let j = 0; j < sort_opt.length; j++) {
      sort_opt[j].classList.remove("sort_checked");
    }
    sort_opt[i].classList.add("sort_checked");
    console.log(this.dataset.chk);
  });
}

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

});

