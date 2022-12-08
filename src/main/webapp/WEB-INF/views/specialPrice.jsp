<%
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader("Expires",0);
  if (request.getProtocol().equals("HTTP/1.1"))
    response.setHeader("Cache-Control", "no-cache");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="logInOutLink" value="${sessionScope.member_id==null?'/login/login':'/login/logout' }"/>
<c:set var="logInOutTxt" value="${sessionScope.member_id==null?'LOGIN':'LOGOUT'}"/>
<c:set var="memberId" value="${sessionScope.member_id==null?'':sessionScope.member_id}" />
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
<script defer src="js/special_price.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700;900&display=swap" rel="stylesheet">

<html>
<head>
  <title>hot deal</title>
</head>
<body>
<div id="wrap">
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
  <%--================================HEADER===========================================--%>
  <%--=================================================================================--%>
  <%--=================================================================================--%>

  <%--=================================================================================--%>
  <%--=================================================================================--%>
  <%--=================================MAIN============================================--%>

  <div class="sprc_main content_area">
      <div class="sprc_nav">
        <a href="#" class="sprc_tab_nav nav_on" id="sprc_tab_nav1"><span>타임특가</span></a>
        <a href="#" class="sprc_tab_nav" id="sprc_tab_nav2"><span>쌤딜특가</span></a>
        <a href="#" class="sprc_tab_nav" id="sprc_tab_nav3"><span>리빙특가</span></a>
        <a href="#" class="sprc_tab_nav" id="sprc_tab_nav4"><span>마진특가</span></a>
      </div>
    </div>

    <div class="sprc_main_banner">
      <div class="sprc_banner"></div>
    </div>

    <div class="sprc_sec">
      <div class="contents_area">
        <div class="sprc_list">
            <c:forEach var="li" items="${list}" varStatus="status">
            <div class="sprc_item">
              <input type="hidden" class="h-sprc-end-date" value="${li.special_product_end_date}">
              <a href="/deal/${li.productDto.product_number}">
                <div class="sprc_img_box">
                  <img src="${li.imageDto.image_path}" class="sprc_img" class="sprc_img" alt="">
                </div>
              </a>
              <div class="${li.wishFlag ? "sprc_wish_on" : "sprc_wish"}" id="dibs" target-data="<%=(String)session.getAttribute("member_id")%>,${li.productDto.product_number}"></div>
              <div class="sprc_timer"></div>
              <a href="/deal/${li.productDto.product_number}">
                <div class="sprc_info">
                  <div class="sprc_title">
                    <div class="sprc_item_name">${li.productDto.product_name}</div>
                    <div class="sprc_item_prd">${li.productDto.product_content}</div>
                  </div>
                  <div class="sprc_item_prc">
                    <div class="sprc_item_cur">
                    <c:set var="s_price" value="${li.productDto.product_price * (li.special_product_discount * 0.01)}" />
                    <fmt:formatNumber value="${s_price}" type="number" />원
                    </div>
                    <span class="sprc_item_rate">${li.special_product_discount}<span>%</span></span>
                    <div class="sprc_item_sale">${li.productDto.product_price}원</div>
                  </div>
                  <div class="sprc_item_user">
                    <div class="user_score">
                      <span class="num">${li.review_rank_average}</span>
                    </div>
                    <div class="user_review">
                      <span class="num">${li.review_count}</span>
                    </div>
                  </div>
                </div>
              </a>
            </div>
            </c:forEach>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="footer"></div>
</div>
</body>
</html>
