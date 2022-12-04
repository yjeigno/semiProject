<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 고예진
  Date: 2022-12-01
  Time: 오후 4:56
  To change this template use File | Settings | File Templates.
--%>
<link rel="stylesheet" href="<c:url value='/css/common.css'/> ">
<link rel="stylesheet" href="<c:url value='/css/header.css'/> ">
<link rel="stylesheet" href="<c:url value='/css/wishlist.css'/> ">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value='/js/header.js'/>"></script>
<script src="<c:url value='/js/wishlist.js'/>"></script>

<html>
<head>
    <title>wishlist</title>
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

    <div class="wishlist_main">
        <div class="content_area">
            <div class="wish_container">
                <div class="wl_title">
                    <h1>Wishlist</h1>
                </div>
                <form action="<c:url value="/wishlist/" />" method="POST">
                <div class="wish_list">
                    <c:forEach var="li" items="${list}" varStatus="status">
                    <div class="wish_item">
                        <a href="/deal">
                            <div class="wish_img_box">
                                <img src="${li.imageDto.image_path}" class="wish_img" alt="">
                            </div>
                        </a>
                        <div class="wish_wish"></div>
                    </div>
                    </c:forEach>
                </div>
                </form>
            </div>
        </div>
    </div>
    <div class="footer"></div>
</div>
</body>
</html>
