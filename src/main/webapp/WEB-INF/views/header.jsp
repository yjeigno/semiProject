<%--
  Created by IntelliJ IDEA.
  User: jyjun
  Date: 2022-11-26
  Time: 오전 3:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="logInOutLink" value="${sessionScope.member_id==null?'/login/login':'/login/logout' }"/>
<c:set var="logInOutTxt" value="${sessionScope.member_id==null?'LOGIN':'LOGOUT'}"/>
<c:set var="memberId" value="${sessionScope.member_id==null?'':sessionScope.member_id}" />
<%--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@--%>
<%--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@--%>
<%--@@@@@@@@@@@@@@@@@@@임시파일임 지울예정@@@@@@@@@@@@@@@--%>
<link rel="stylesheet" href="<c:url value='/css/common.css'/> ">
<link rel="stylesheet" href="<c:url value='/css/header.css'/> ">
<script src="<c:url value='https://code.jquery.com/jquery-1.12.4.js'/> "></script>
<script src="<c:url value='/js/header.js'/> "></script>
<script>
  let logoWhite = "<c:url value='/img/headerImg/logo_white.png'/>"
  let logoBlack = "<c:url value='/img/headerImg/logo_black.png'/>"
</script>
<html>
<head>
  <title>header</title>
</head>
<body>

<header class="header">
  <div class="content_area header_top">
    <ul class="top_nav_ul">
      <c:choose>
        <c:when test="${memberId==null || memberId.equals('') }">
          <li><a href="<c:url value='/register'/>">JOIN</a></li>
        </c:when>
        <c:otherwise>
          <li>
              ${memberId} 님
          </li>
        </c:otherwise>
      </c:choose>
      <!-- 로그인 페이지로 이동 -->
      <li>
        <a href="<c:url value='${logInOutLink} '/>">${logInOutTxt}</a>
      </li>
      <!-- 위시리스트 내역 페이지로 이동 -->
      <li><a href="/wishlist">WISHLIST</a></li>


      <!-- 본인인증 후 / 마이페이지로 이동 -->
      <li><a href="/mypage/mpMain">MYPAGE</a></li>
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

  <div class="header_bottom">
    <div class="content_area">
      <ul class="bottom_nav_ul">
        <li class="box"><a href="/search.do?search=가구"> Furniture</a></li>
        <li class="box"><a href="/search.do?search=가구">Lighting</a></li>
        <li class="box"><a href="/search.do?search=가구">Fabric</a></li>
        <!-- 홈데코 클릭시 인테리어 페이지 이동 -->
        <li><a href="/Interior">Home Deco</a></li>
        <!-- 특가페이지 이동 -->
        <li><a href="/specialPrice">Hot Deal</a></li>
      </ul>
    </div>
  </div>
  <div class="menu_box">
    <div class="content_area o_f_hidden">
      <ul class="ul_category_box">
        <li class="li_Title">Furniture</li>
        <li class="li_content">
          <ul class="ca_box" onclick="location.href='/search.do?search=가구&category=3';">
            <li class="ca_txt">Table</li>
            <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn1.png'/> "></li>
          </ul>
          <ul class="ca_box" onclick="location.href='/search.do?search=가구&category=5';">
            <li class="ca_txt">Table & Dining</li>
            <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn2.png'/> "></li>
          </ul>
          <ul class="ca_box" onclick="location.href='/search.do?search=가구&category=7';">
            <li class="ca_txt">Chair</li>
            <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn3.png'/> "></li>
          </ul>
          <ul class="ca_box" onclick="location.href='/search.do?search=가구&category=2';">
            <li class="ca_txt">Sofa</li>
            <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn4.png'/> "></li>
          </ul>
          <ul class="ca_box" onclick="location.href='/search.do?search=가구&category=6';">
            <li class="ca_txt">Desk</li>
            <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn5.png'/> "></li>
          </ul>
          <ul class="ca_box" onclick="location.href='/search.do?search=가구&category=4';">
            <li class="ca_txt">TV Stand & Storage</li>
            <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn6.png'/> "></li>
          </ul>
          <ul class="ca_box" onclick="location.href='/search.do?search=가구&category=8';">
            <li class="ca_txt">Small Furniture</li>
            <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn7.png'/> "></li>
          </ul>
          <ul class="ca_box" onclick="location.href='/search.do?search=가구&category=1';">
            <li class="ca_txt">Bed</li>
            <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn8.png'/> "></li>
          </ul>
        </li>

      </ul>
      <ul class="ul_category_box">
        <li class="li_Title">Lighting</li>
        <li>
          <ul class="li_content str">
            <li class="l_txt"><a href="/search.do?search=가구&category=1"> pendant</a></li>
            <li class="l_txt"><a href="/search.do?search=가구&category=1"> table</a></li>
            <li class="l_txt"><a href="/search.do?search=가구&category=1"> floor lamp</a></li>
            <li class="l_txt"><a href="/search.do?search=가구&category=1"> wall</a></li>
            <li class="l_txt"><a href="/search.do?search=가구&category=1"> ceiling</a></li>
          </ul>
        </li>

      </ul>
      <ul class="ul_category_box">
        <li class="li_Title">Fabric</li>
        <li>
          <ul class="li_content str right">
            <li class="l_txt"><a href="/search.do?search=가구&category=1"> Curtain</a></li>
            <li class="l_txt"><a href="/search.do?search=가구&category=1"> Rug</a></li>
            <li class="l_txt"><a href="/search.do?search=가구&category=1"> blind</a></li>
            <li class="l_txt"><a href="/search.do?search=가구&category=1"> mat</a></li>
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

<!-- confirm 모달을 쓸 페이지에 추가 start-->
<section class="modal modal_section type_confirm">
  <div class="enroll_box">
    <p class="menu_msg"></p>
  </div>
  <div class="enroll_btn">
    <button class="btn posi_btn btn_ok">확인</button>
    <button class="btn gray_btn modal_close" onclick="modalClose(this)">취소</button>
  </div>
</section>
<!-- confirm 모달을 쓸 페이지에 추가 end-->

<!-- alert 모달을 쓸 페이지에 추가 start-->
<section class="modal modal_section type_alert">
  <div class="enroll_box">
    <p class="menu_msg"></p>
  </div>
  <div class="enroll_btn">
    <button class="btn posi_btn modal_close" onclick="modalClose(this)">확인</button>
  </div>
</section>
<!-- alert 모달을 쓸 페이지에 추가 end-->
</body>
</html>