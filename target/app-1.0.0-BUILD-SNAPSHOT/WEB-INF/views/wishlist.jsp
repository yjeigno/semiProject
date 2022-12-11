<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="<c:url value='/css/wishlist.css'/> ">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script defer src="<c:url value='/js/wishlist.js'/>"></script>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700;900&display=swap" rel="stylesheet">
</head>
<body>
<input type="hidden" value="${memberId}" id="w_memberId" />
<div id="wrap">
    <jsp:include page="header.jsp" />
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
                    <button class="ch" id="btn_pro_del">선택삭제</button>
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

                            <%------------------------------ 일반 상품일 경우 --------------------------%>
                            <c:if test="${li.productDto.product_status eq 1}">
                                <div class="wish_item" id="pr${li.productDto.product_number}">
                                    <a href="/deal/?product_number=${li.productDto.product_number}">
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
                                    <input type="checkbox" class="w_chk" id="w_chk_id_${li.productDto.product_number}" value="${li.product_number}">
                                    <label for="w_chk_id_${li.productDto.product_number}"></label>
                                </div>
                            </c:if>

                            <%------------------------------ 특가 상품일 경우 --------------------------%>
                            <c:if test="${li.productDto.product_status eq 2}">
                                <div class="wish_item" id="prs${li.productDto.product_number}">
                                    <a href="/deal/?product_number=${li.productDto.product_number}">
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
                                    <input type="checkbox" class="w_chk" id="w_chk_ids_${li.productDto.product_number}" value="${li.product_number}">
                                    <label for="w_chk_ids_${li.productDto.product_number}"></label>
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
