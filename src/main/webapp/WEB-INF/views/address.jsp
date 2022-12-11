
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-12-07
  Time: 오후 5:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>



<link rel="stylesheet" href="<c:url value='/css/mypage.css'/> ">
<link rel="stylesheet" href="<c:url value='/css/address_book.css'/> ">
<link rel="stylesheet" href="<c:url value='/css/common.css'/> ">
<link rel="stylesheet" href="<c:url value='/css/header.css'/> ">



<script src="https://code.jquery.com/jquery-3.6.1.slim.min.js"></script>
<script src="<c:url value='/js/header.js'/> "></script>

<html>
<head>
    <title>주문페이지</title>
</head>
<body>
<div id="wrap">
  <header class="header">
    <div class="content_area header_top">
      <ul class="top_nav_ul">
        <!-- 회원가입 페이지로 이동 -->
        <li><a href="#">JOIN</a></li>
        <!-- 로그인 페이지로 이동 -->
        <li><a href="#">LOGIN</a></li>
        <!-- 위시리스트 내역 페이지로 이동 -->
        <li><a href="#">WISHLIST</a></li>
        <!-- 본인인증 후 / 마이페이지로 이동 -->
        <li><a href="#">MYPAGE</a></li>
        <li id="search_icon">
          <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 48 48">
            <path d="M31 28h-1.59l-.55-.55C30.82 25.18 32 22.23 32 19c0-7.18-5.82-13-13-13S6 11.82 6 19s5.82 13 13 13c3.23 0 6.18-1.18 8.45-3.13l.55.55V31l10 9.98L40.98 38 31 28zm-12 0c-4.97 0-9-4.03-9-9s4.03-9 9-9 9 4.03 9 9-4.03 9-9 9z"/>
          </svg>
        </li>
      </ul>
      <div class="search_box">
        <form action="" method="post"name="search">
          <input class="search_bar" type="text" name="search" placeholder="검색어를 입력해주세요.">
          <input class="search_btn" type="button" value="검색">
        </form>
      </div>
      <!-- 로고 클릭시 메인페이지로 이동 -->
      <a href="<c:url value='/'/>"><div class="logo"><img src="<c:url value='/img/headerImg/logo_black.png'/> " alt=""></div></a>
    </div>
    <%--        src="img/headerImg/logo_black.png"--%>
    <%--        href="<c:url value='img/headerImg/logo_black.png'/> "--%>
    <div class="header_bottom">
      <div class="content_area">
        <ul class="bottom_nav_ul">
          <li class="box">Furniture</li>
          <li class="box">Lighting</li>
          <li class="box">Fabric</li>
          <!-- 홈데코 클릭시 인테리어 페이지 이동 -->
          <li><a href="">Home Deco</a></li>
          <!-- 특가페이지 이동 -->
          <li><a href="">Hot Deal</a></li>
        </ul>
      </div>
    </div>
    <div class="menu_box">
      <div class="content_area o_f_hidden">
        <ul class="ul_category_box">
          <li class="li_Title">Furniture</li>
          <li class="li_content">
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Table</li>
              <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn1.png'/> "></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Table & Dining</li>
              <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn2.png'/> "></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Chair</li>
              <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn3.png'/> "></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Sofa</li>
              <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn4.png'/> "></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Desk</li>
              <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn5.png'/> "></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">TV Stand & Storage</li>
              <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn6.png'/> "></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Small Furniture</li>
              <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn7.png'/> "></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Bed</li>
              <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn8.png'/> "></li>
            </ul>
          </li>

        </ul>
        <ul class="ul_category_box">
          <li class="li_Title">Lighting</li>
          <li>
            <ul class="li_content str">
              <li class="l_txt">pendant</li>
              <li class="l_txt">table</li>
              <li class="l_txt">floor lamp</li>
              <li class="l_txt">wall</li>
              <li class="l_txt">ceiling</li>
            </ul>
          </li>

        </ul>
        <ul class="ul_category_box">
          <li class="li_Title">Fabric</li>
          <li>
            <ul class="li_content str right">
              <li class="l_txt">Curtain</li>
              <li class="l_txt">Rug</li>
              <li class="l_txt">blind</li>
              <li class="l_txt">mat</li>
              <li></li>
            </ul>
          </li>

        </ul>
        <!-- <ul class="ul_category_box">
            <li class="li_Title">Home Deco</li>
            <li class="li_content"></li>

        </ul>
        <ul class="ul_category_box">
            <li class="li_Title">Hot Deal</li>
            <li class="li_content"></li>

        </ul> -->
      </div>
    </div>
  </header>
  <div class="h_100"></div>
  <main class="main">
    <div class="contents_area">
      <div class="mypage_container">
        <div id="my_page_container">
          <div class="mp_title">
            <h1>주소록 관리</h1>
          </div>

          <div class="contents_box">
            <div class="address_book">
              <ul class="address_managing_tab">
                <li class="adrs_tab adrs_list tab_selected" id="adrs_b2"><p class="adrs_p2">주소록 목록</p></li>
                <li class="adrs_tab adrs_resister" id="adrs_b1"><p class="adrs_p1">주소록 등록</p></li>
              </ul>

              <div class="address_manager">

                <!---------------------- 주소록 등록-------------------------------->

                <div class="address_In">

                  <form action="<c:url value="/address" />"  onsubmit="return formCheck(this)">
                    <p class="address_txt">주소록이름<input type="text" id="home" name="home" class="address_txt_box1" placeholder="내용을 입력해주세요"></p><br>
                    <p class="address_txt">받으시는 분<input type="text" id="name" name="name" class="address_txt_box2" placeholder="내용을 입력해주세요"></p><br>
                    <p class="address_txt">연락처<input type='tel' id="tellPh" class="address_txt_box3" name='phone' placeholder="010" /> -
                      <input type='tel' id="tellPh2" class="address_txt_box3" name='phone' placeholder="1234" /> -
                      <input type='tel' id="tellPh3" class="address_txt_box3" name='phone' placeholder="5678" /></p> <br>
                    <p class="address_txt">주소<input type="text" id="adrs" name="adrs" placeholder="내용을 입력해주세요" class="address_txt_box4"> </p><br>
                    <p class="address_txt"><input type="text" id="adrs2" placeholder="내용을 입력해주세요" class="address_txt_box5"> </p>
                    <br>
                    <button type="submit" id="request" class="address_chk">등록</button>

                  </form>

                </div>

                <script>

                  $("#request").click(function (){

                    var params = {
                      home : $("#home").val()
                      ,name : $("#name").val()
                      ,tellPh : $("#tellPh").val()
                      ,tellPh2 : $("#tellPh2").val()
                      ,tellPh3 : $("#tellPh3").val()
                      ,addrs : $("#adrs").val()
                      ,addrs2: $("#adrs2").val()
                    }

                    $.ajax({
                      type:"POST",
                      url:"/address/ajax",
                      data:params,
                      success:function (res){
                        alert(res.code);
                      },
                      error: function (XMLHttpRequest,textStatus,errorThrown){
                        alert("통신 실패.")
                      }
                    });

                  });


                  const home = document.getElementById('home');
                  const name = document.getElementById('name');
                  const tellPh = document.getElementById('tellPh');
                  const tellPh2 = document.getElementById('tellPh2');
                  const tellPh3 = document.getElementById('tellPh3');
                  const adrs = document.getElementById('adrs');
                  const adrs2 = document.getElementById('adrs2');

                  home.addEventListener('keydown',function (){ initMsg();});
                  name.addEventListener('keydown',function (){ initMsg();});
                  tellPh.addEventListener('keydown',function (){ initMsg();});
                  tellPh2.addEventListener('keydown',function (){ initMsg();});
                  tellPh3.addEventListener('keydown',function (){ initMsg();});
                  adrs.addEventListener('keydown',function (){ initMsg();});
                  adrs2.addEventListener('keydown',function (){ initMsg();});

                  function initMsg() {
                    document.getElementsByClassName('address_In').innerText="";
                  }

                  function setMessage(msg, element) {
                    document.getElementsByClassName('address_In').innerHTML = `<i class="fa fa-exclamation-circle"> ${ '${address_In}' }</i>`;

                    if (element) {
                      // 해당 요소로 focus
                      element.select();
                    }
                  }



                </script>




                <!---------------------- 주소록 등록-------------------------------->








                <c:forEach items="${list}" var="li">


                <div class="address_tag">${li.address_home}

                  <button class="address_tag_D">삭제</button>
                  <button class="address_tag_R">수정</button>

                </div>


                <div class="address_list">
                  <div class="list_box1">
                    <div id="address_list_txt"> 수령인:${li.address_name}</div>


                    <div class="list_box2" id="address_list_txt">연락처 :${li.address_phone}</div>
                    <div id="address_list_txt">주소 :${li.address_adrs}</div>




                  </div>

                  </c:forEach>













                </div>


                <div class="address_basic">기본 배송지로 설정 <input type="radio">
                  <div class="address_bot">주소록은 최대 5까지 저장 가능합니다</div>
                </div>





              </div>


            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
</div>

<script>


  $(document).ready(function(){

    // 주소록 등록 누를시
    $('.adrs_p1').click(function(){
      $('.address_tag').css({opacity: 0})
      $('.address_list').css({opacity: 0})
      $('.address_basic').css({opacity: 0})
      $('.tab_selected > p').css('border-bottom', 0)
      $('#adrs_b2').css({border:"1px solid #999"})
      $('#adrs_b1').css({border:"2px solid #999"})
      $('.address_In').css({opacity:1})
      $('.address_tag').css('z-index', -99999);


    })
 // 주소록 목록 누를시
    $('.adrs_p2').click(function(){
      $('.address_In').css({opacity:0})
      $('.address_tag').css({opacity: 1})
      $('.address_list').css({opacity: 1})
      $('.address_basic').css({opacity: 1})

      $('#adrs_b1').css({border:"1px solid #999"})
      $('#adrs_b2').css({border:"2px solid #999"})
      $('.address_tag').css('z-index', 0);

    })
  //수정 버튼 누를시
    $('.address_tag_R').click(function (){

      $('.address_tag').css({opacity: 0})
      $('.address_list').css({opacity: 0})
      $('.address_basic').css({opacity: 0})
      $('.tab_selected > p').css('border-bottom', 0)
      $('#adrs_b2').css({border:"1px solid #999"})
      $('#adrs_b1').css({border:"2px solid #999"})
      $('.address_In').css({opacity:1})
      $('.address_tag').css('z-index', -99999);
    })

    //경고창 팝업
    $(document).ready(function() {
      var checkload = true;
      $(".address_chk").click(function () {
        checkload = false;     });
      $(window).on("beforeunload", function () {
        if (checkload == true) return "정말로 나가시겠습니까?";
      });
    });





  })







</script>
</body>
</html>
