<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 고예진
  Date: 2022-11-19
  Time: 오후 11:56
  To change this template use File | Settings | File Templates.
--%>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/special_price.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="js/header.js"></script>
<script src="js/special_price.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700;900&display=swap" rel="stylesheet">

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>hot deal</title>
</head>
<body>
<div id="wrap">
  <header class="header">
    <div class="content_area header_top">
      <ul class="top_nav_ul">
        <!-- 로그인 페이지로 이동 -->
        <li><a href="#">LOGIN</a></li>
        <!-- 회원가입 페이지로 이동 -->
        <li><a href="#">JOIN</a></li>
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
          <li>Furniture</li>
          <li>Lighting</li>
          <li>Kitchen</li>
          <li>Home Deco</li>
          <li>Hot Deal</li>
        </ul>
      </div>
    </div>
    <div class="menu_box">
      <div class="content_area o_f_hidden">
        <ul class="ul_category_box">
          <li class="li_Title">Furniture</li>
          <li class="li_content">
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Boutique Furniture</li>
              <li class="ca_img"><img src="img/Furn1.png"></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Table & Dining</li>
              <li class="ca_img"><img src="img/Furn2.png"></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Chair</li>
              <li class="ca_img"><img src="img/Furn3.png"></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Sofa</li>
              <li class="ca_img"><img src="img/Furn4.png"></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Global Furniture</li>
              <li class="ca_img"><img src="img/Furn5.png"></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">TV Stand & Storage</li>
              <li class="ca_img"><img src="img/Furn6.png"></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Small Furniture</li>
              <li class="ca_img"><img src="img/Furn7.png"></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Bed</li>
              <li class="ca_img"><img src="img/Furn8.png"></li>
            </ul>
          </li>

        </ul>
        <ul class="ul_category_box">
          <li class="li_Title">Lighting</li>
          <li class="li_content"></li>

        </ul>
        <ul class="ul_category_box">
          <li class="li_Title">Kitchen</li>
          <li class="li_content"></li>

        </ul>
        <ul class="ul_category_box">
          <li class="li_Title">Home Deco</li>
          <li class="li_content"></li>

        </ul>
        <ul class="ul_category_box">
          <li class="li_Title">Hot Deal</li>
          <li class="li_content"></li>

        </ul>
      </div>
    </div>
  </header>
  <div class="h_100"></div>

  <div class="sprc_main content_area">
      <div class="sprc_nav">
        <a href="#" class="sprc_tab_nav" id="sprc_tab_nav1">타임특가</a>
        <a href="#" class="sprc_tab_nav" id="sprc_tab_nav2">쌤딜특가</a>
        <a href="#" class="sprc_tab_nav" id="sprc_tab_nav3">리빙특가</a>
        <a href="#" class="sprc_tab_nav" id="sprc_tab_nav4">마진특가</a>
      </div>
    </div>

    <div class="sprc_main_banner">
      <div class="sprc_banner"></div>
    </div>
    <div class="sprc_sec">
      <div class="sprc_list contents_area">
        <c:forEach var="li" items="${list}" varStatus="status">
        <div class="sprc_item">
          <input type="hidden" class="h-sprc-end-date" value="${li.special_product_end_date}">
          <a href="/deal">
            <div class="sprc_img_box">
              <img src="${li.imageDto.image_path}" class="sprc_img" class="sprc_img" alt="">
            </div>
          </a>
          <div class="sprc_wish" id="dibs" target-data="<%=(String)session.getAttribute("id")%>,${li.productDto.product_number}"></div>
          <div class="sprc_timer">
            <div class="time_obj" id="s_days">
              <span class="unit"></span>
            </div>
            <div class="time_obj" id="s_hours">
              <span class="unit"></span>
            </div>
            <div class="time_obj" id="s_mins">
              <span class="unit"></span>
            </div>
            <div class="time_obj" id="s_seconds">
              <span class="unit"></span>
            </div>
          </div>
          <a href="/deal">
            <div class="sprc_title">
              <div class="sprc_item_name">${li.productDto.product_name}</div>
              <div class="sprc_item_prd">${li.productDto.product_content}</div>
            </div>
          </a>
         <div class="sprc_item_prc">
            <div class="sprc_item_cur">
              <c:set var="s_price" value="${li.productDto.product_price * (li.special_product_discount * 0.01)}" />
              <fmt:formatNumber value="${s_price}" type="number" />
            </div>
            <div class="sprc_item_sale">${li.productDto.product_price}</div>
            <span class="sprc_item_rate">${li.special_product_discount}<span>%</span></span>
            <div class="sprc_item_user">
              <div class="user_score">
                <span class="num">${li.review_rank_average}</span>
              </div>
              <div class="user_review">
                <span class="num">${li.review_count}</span>
              </div>
            </div>
          </div>
        </div>
        </c:forEach>
        </div>
      </div>
    </div>
  </div>
  <div class="footer"></div>
</div>
</body>
</html>
