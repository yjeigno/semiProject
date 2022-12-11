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
<!DOCTYPE html>
<html lang="en">
<head>
  <title>specialPrice</title>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel="stylesheet" href="<c:url value='/css/common.css'/> ">
  <link rel="stylesheet" href="<c:url value='/css/special_price.css'/> ">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script defer src="<c:url value='/js/special_price.js'/>"></script>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700;900&display=swap" rel="stylesheet">
</head>
<body>
<div id="wrap">
  <jsp:include page="header.jsp" />
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
      <div class="content_area">
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
