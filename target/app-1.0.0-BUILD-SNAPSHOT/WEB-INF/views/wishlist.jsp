<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="logInOutLink" value="${sessionScope.member_id==null?'/login/login':'/login/logout' }"/>
<c:set var="logInOutTxt" value="${sessionScope.member_id==null?'LOGIN':'LOGOUT'}"/>
<c:set var="memberId" value="${sessionScope.member_id==null?'':sessionScope.member_id}" />

<%--
  Created by IntelliJ IDEA.
  User: 고예진
  Date: 2022-12-01
  Time: 오후 4:56
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>wishlist</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="<c:url value='/css/common.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/header.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/wishlist.css'/> ">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="<c:url value='/js/header.js'/>" charset="utf-8"></script>
    <script defer src="<c:url value='/js/wishlist.js'/>"></script>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700;900&display=swap" rel="stylesheet">

</head>
<body>
<input type="hidden" value="${memberId}" id="w_memberId" />
<div id="wrap">
    <header class="header">
        <div class="content_area header_top">
            <ul class="top_nav_ul">
                <!-- 회원가입 페이지로 이동 -->
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
            <a href="<c:url value='/'/>"><div class="logo"><img src="./img/headerImg/logo_black.png" alt=""></div></a>
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
                            <li class="ca_img"><img src="./img/headerImg/Furn1.png"></li>
                        </ul>
                        <ul class="ca_box" onclick="location.href='#';">
                            <li class="ca_txt">Table & Dining</li>
                            <li class="ca_img"><img src="./img/headerImg/Furn2.png"></li>
                        </ul>
                        <ul class="ca_box" onclick="location.href='#';">
                            <li class="ca_txt">Chair</li>
                            <li class="ca_img"><img src="./img/headerImg/Furn3.png"></li>
                        </ul>
                        <ul class="ca_box" onclick="location.href='#';">
                            <li class="ca_txt">Sofa</li>
                            <li class="ca_img"><img src="./img/headerImg/Furn4.png"></li>
                        </ul>
                        <ul class="ca_box" onclick="location.href='#';">
                            <li class="ca_txt">Desk</li>
                            <li class="ca_img"><img src="./img/headerImg/Furn5.png"></li>
                        </ul>
                        <ul class="ca_box" onclick="location.href='#';">
                            <li class="ca_txt">TV Stand & Storage</li>
                            <li class="ca_img"><img src="./img/headerImg/Furn6.png"></li>
                        </ul>
                        <ul class="ca_box" onclick="location.href='#';">
                            <li class="ca_txt">Small Furniture</li>
                            <li class="ca_img"><img src="./img/headerImg/Furn7.png"></li>
                        </ul>
                        <ul class="ca_box" onclick="location.href='#';">
                            <li class="ca_txt">Bed</li>
                            <li class="ca_img"><img src="./img/headerImg/Furn8.png"></li>
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
                <form action="<c:url value="/wishlist/" />" method="POST" id="wishForm">
                    <div class="wish_list">

                        <%------------------------------ 찜한 상품이 없을 경우 --------------------------%>
                        <c:if test="${list.size() eq 0}" >
                            <div class="wish_none">
                                <h2>위시리스트에 담은 상품이 없습니다.</h2>
                                <h2>하트를 눌러 마음에 드는 상품을 찜해보세요.</h2>
                            </div>
                        </c:if>

                        <c:forEach var="li" items="${list}" varStatus="status">
                            <%------------------------------ 매진 상품일 경우 --------------------------%>
                            <%--<c:if test="${li.productDto.product_status eq 0}">
                                <div class="wish_item" id="pr+${li.productDto.product_number}">
                                    <a href="/deal/${li.productDto.product_number}">
                                        <div class="wish_sec">
                                            <div class="wish_img_box">
                                                <img src="${li.imageDto.image_path}" class="wish_img" alt="">
                                            </div>
                                            <div class="wish_title">
                                                <div class="wish_sold_out"><span>해당 상품은 매진되었습니다.</span></div>
                                                <div class="wish_item_name">${li.productDto.product_name}</div>
                                                <div class="wish_item_prd">${li.productDto.product_content}</div>
                                            </div>
                                            <div class="wish_price"><fmt:formatNumber value="${li.productDto.product_price}" pattern="#,###"/>원</div>
                                        </div>
                                    </a>
                                       <div class="wish_wish" target-data="<%=(String)session.getAttribute("id")%>,${li.productDto.product_number}"></div>
                                    <div class="wish_wish" target-data="<%=(String)session.getAttribute("member_id")%>,${li.productDto.product_number}"></div>
                                    <input type="checkbox" class="w_chk">
                                </div>
                            </c:if>--%>
                            <%------------------------------ 일반 상품일 경우 --------------------------%>
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
                                    <div class="wish_wish" target-data="<%=(String)session.getAttribute("member_id")%>,${li.productDto.product_number}"></div>
                                    <input type="checkbox" class="w_chk" value="${li.product_number}">
                                </div>
                            </c:if>

                            <%------------------------------ 특가 상품일 경우 --------------------------%>
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
                                    <div class="wish_wish" target-data="<%=(String)session.getAttribute("member_id")%>,${li.productDto.product_number}"></div>
                                    <input type="checkbox" class="w_chk" value="${li.product_number}">
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
