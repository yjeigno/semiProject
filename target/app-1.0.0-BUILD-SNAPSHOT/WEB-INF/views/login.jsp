<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>로그인</title>
  <link rel="stylesheet" href="./css/common.css">
  <link rel="stylesheet" href="./css/header.css">
  <link rel="stylesheet" href="./css/login.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <!-- <script defer src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> -->
  <script src=".js/header.js"></script>
  <script src=".js/login.js"></script>

</head>
<body>
<div id="wrap">

  <header class="header">
    <div class="content_area header_top">
      <ul class="top_nav_ul">
        <!-- 회원가입 페이지로 이동 -->
        <li><a href="join">JOIN</a></li>
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
      <a href="#"><div class="logo"><img src="img/headerImg/logo_black.png" alt=""></div></a>
    </div>

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
              <li class="ca_img"><img src="img/headerImg/Furn1.png"></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Table & Dining</li>
              <li class="ca_img"><img src="img/headerImg/Furn2.png"></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Chair</li>
              <li class="ca_img"><img src="img/headerImg/Furn3.png"></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Sofa</li>
              <li class="ca_img"><img src="img/headerImg/Furn4.png"></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Desk</li>
              <li class="ca_img"><img src="img/headerImg/Furn5.png"></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">TV Stand & Storage</li>
              <li class="ca_img"><img src="img/headerImg/Furn6.png"></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Small Furniture</li>
              <li class="ca_img"><img src="img/headerImg/Furn7.png"></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Bed</li>
              <li class="ca_img"><img src="img/headerImg/Furn8.png"></li>
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
  </div>

  <div class="member_sec">
    <div class="tap_btn">
      <a href="login"><div class="m_btn_line tap_checked"><h2>Login</h2></div></a>
      <a href="register"><div class="m_btn_line"><h2>Join</h2></div></a>
    </div>


    <!-- //////////////////////////////////////////////////////// -->
    <!-- 로그인 탭 -->
    <div class="pan_box">
      <!-- 로그인 폼 -->
      <div class="login_pan">
        <div class="login_title">
          <div class="t1">
            <h1>HANSSEM</h1><h3>로그인</h3>
          </div>
          <div class="t2">한샘몰 회원으로 많은 혜택을 누리세요.</div>
        </div>

        <form action="<c:url value='/login/login'/>" method="post" id="login_form" onsubmit="return formCheck(this);">
        <div id="msg">
            <c:if test="${not empty param.msg}">
              <i class="fa fa-exclamation-circle"> ${URLDecoder.decode(param.msg)}</i>
            </c:if>
          </div>
          <!-- 아이디 입력 -->
          <div class="login_id">ID</div>
          <input type="text" id="member_id" name="member_id" value="${ cookie.id.value }" placeholder="아이디를 입력하세요.">
          <!-- 비밀번호 입력 -->
          <div class="login_pw">PW</div>
          <input type="text" id="member_pw" name="member_pw" placeholder="비밀번호를 입력하세요.">

          <div class="login_footer">
            <!-- 아이디 기억하기 -->

            <label for="rememberId">
              <input type="checkbox" id="rememberId" name="rememberId" ${empty cookie.id.value?"":"checked"}>
              <h5>아이디 기억하기</h5>
            </label>
            <!-- 아이디/비번 찾기 -->
            <span>
                <a href="#"> <h5>아이디 / 비밀번호 찾기</h5></a>
            </span>
          </div>
          <!-- 로그인 확인 아니면 아이디 또는 비밀번호가 틀립니다 -->
          <button type="submit" class="log_btn">로그인</button>
        </form>
      </div>

    </div>

  </div>

</div>

<footer class="footer"></footer>


</body>
</html>