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

<%--<link rel="stylesheet" href="<c:url value='/css/Hanssem_myPage.css'/> ">--%>
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
  <%--=================================================================================--%>
  <%--=================================================================================--%>
  <%--================================HEADER===========================================--%>
  <jsp:include page="header.jsp" />
  <%--================================HEADER===========================================--%>
  <%--=================================================================================--%>
  <%--=================================================================================--%>
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
