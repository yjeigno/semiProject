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
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700;900&display=swap" rel="stylesheet">

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
                            <li class="ca_txt">Global Furniture</li>
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
                <div class="wish_btn">
                    <button class="ch">선택삭제</button>
                    <button class="all">전체삭제</button>
                </div>
                <form action="<c:url value="/wishlist/" />" method="POST">
                <div class="wish_list">

                    <c:if test="${list.size() eq 0}" >
                        <div class="wish_none">
                            <h2>위시리스트에 담은 상품이 없습니다.</h2>
                            <h2>하트를 눌러 마음에 드는 상품을 찜해보세요.</h2>
                        </div>
                    </c:if>


                    <c:forEach var="li" items="${list}" varStatus="status">
                    <c:if test="${li.productDto.product_status eq 1}">
                        <div class="wish_item" id="pr+${li.productDto.product_number}">
                            <a href="/deal/${li.productDto.product_number}">
                                <div class="wish_sec">
                                    <div class="wish_img_box">
                                        <img src="${li.imageDto.image_path}" class="wish_img" alt="">
                                    </div>
                                    <div class="wish_title">
                                        <div class="wish_item_name">${li.productDto.product_name}</div>
                                        <div class="wish_item_prd">${li.productDto.product_content}</div>
                                    </div>
                                    <div class="wish_price"><fmt:formatNumber value="${li.productDto.product_price}" pattern="#,###"/>원</div>
                                </div>
                            </a>
                            <div class="wish_wish" target-data="<%=(String)session.getAttribute("id")%>,${li.productDto.product_number}"></div>
                        </div>
                    </c:if>
                    <c:if test="${li.productDto.product_status eq 2}">
                        <div class="wish_item">
                            <a href="/deal/${li.productDto.product_number}">
                                <div class="wish_sec">
                                    <div class="wish_img_box">
                                        <img src="${li.imageDto.image_path}" class="wish_img" alt="">
                                    </div>
                                    <div class="wish_title">
                                        <div class="wish_item_name">${li.productDto.product_name}</div>
                                        <div class="wish_item_prd">${li.productDto.product_content}</div>
                                    </div>
                                    <div class="sprc_item_prc">
                                        <div class="sprc_item_cur">
                                            <c:set var="s_price" value="${li.productDto.product_price * (li.specialPriceDto.special_product_discount * 0.01)}" />
                                            <fmt:formatNumber value="${s_price}" type="number" />원
                                        </div>
                                        <span class="sprc_item_rate">${li.specialPriceDto.special_product_discount}<span>%</span></span>
                                        <div class="sprc_item_sale">${li.productDto.product_price}원</div>
                                    </div>
                                </div>
                            </a>
                            <div class="wish_wish" target-data="<%=(String)session.getAttribute("id")%>,${li.productDto.product_number}"></div>
                        </div>
                    </c:if>
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
