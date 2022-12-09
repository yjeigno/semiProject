<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-12-09
  Time: 오후 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<script src="https://code.jquery.com/jquery-3.6.1.slim.min.js"></script>
<script src="<c:url value='/js/header.js'/> "></script>
<%--<script src="./js/mypage.js"></script>--%>

<%--<link rel="stylesheet" href="<c:url value='/css/Hanssem_mypage.css'/> ">--%>
<link rel="stylesheet" href="<c:url value='/css/common.css'/> ">
<link rel="stylesheet" href="<c:url value='/css/header.css'/> ">
<link rel="stylesheet" href="<c:url value='/css/Shipping.css'/>">
<link rel="stylesheet" href="<c:url value='/css/mypage.css'/> ">

<html>
<head>
    <title>Title</title>
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
            <h1>주문 / 배송 조회</h1>
          </div>
          <div class="contents_box">
            <div class="infoGraph_box">
              <ul class="shipping_status">
                <li>
                  <div class="status_title">배송중</div>
                  <div class="info_img imgOfTruck"></div>
                  <div class="status_count">0</div>
                </li>
                <li>
                  <div class="status_title">배송완료</div>
                  <div class="info_img imgOfBox"></div>
                  <div class="status_count">1</div>
                </li>
                <li>
                  <div class="status_title">취소/반품/교환</div>
                  <div class="info_img imgOfCancel"></div>
                  <div class="status_count">0</div>
                </li>
              </ul>
              <div class="period_box">
                <ul class="monthly_reference">
                  <li class="month">7월</li>
                  <li class="month">8월</li>
                  <li class="month">9월</li>
                  <li class="month">10월</li>
                  <li class="month">11월</li>
                  <li class="month month_checked">12월</li>
                </ul>

                <ul class="calendar_reference">
                  <li><input type="date" name="cal_since" id="since" value="2022-12-01"></li>
                  <li><span>~</span></li>
                  <li><input type="date" name="cal_until" id="until"></li>
                </ul>
                <button class="btn_confirm">조회</button>
              </div>
            </div>

            <div class="status_detail">
              <div class="date_tagLine">
                <div class="line">
                  <div class="date_tag">2022.12</div>
                </div>
              </div>

              <div class="product_status">
                <div class="product_img"></div>
                <div class="product_desc">
                  <p class="product_name">상품명</p>
                  <p class="product_opt">선택옵션(색상,크기)</p>
                  <p class="product_price">결제가격</p>
                  <p class="order_date">2022.12.01</p>
                  <p class="product_status">상태표시줄</p>
                </div>

                <div class="opt_btn_box">
                  <div class="btn_box1"><a href="">배송조회</a></div>
                  <div class="btn_box2"><a href="">구매확정</a></div>
                  <div class="btn_box3"><a href="">교환/반품</a></div>
                  <div class="btn_box4"><a href="">문의하기</a></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
</div>

</body>
</html>
