<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--
  Created by IntelliJ IDEA.
  User: 이준환
  Date: 2022-11-19
  Time: 오후 8:43
  To change this template use File | Settings | File Templates.
--%>

<link rel="stylesheet" href="<c:url value='/css/common.css'/> ">
<link rel="stylesheet" href="<c:url value='/css/header.css'/> ">
<link rel="stylesheet" href="<c:url value='/css/Interior.css'/> ">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value='/js/header.js'/> "></script>
<script src="<c:url value='/js/Interior.js'/> "></script>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Interior3</title>
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


  <div class="main">
    <div class="Interior_container_top">
      <div class="title_left"><h2>리모델링 상품</h2></div>
    </div>

    <!------------------------------------------------------>

    <div class="Interior_container_bot">





      <div class="contents_right">
        <div class="right_menu1">


          <a href="Interior_detail" target="_blank">
           <div class="slidebox one">
            <div class="on"></div>

           </div>
          </a>

          <a href="Interior_detail" target="_blank">
           <div class="slidebox two">
             <div class="tw"></div>
           </div>
          </a>


          <input type="button" value="〈" class="btn_slide" id="btn_slide_L">
          <input type="button" value="〉" class="btn_slide" id="btn_slide_R">

          <div class="indicator"></div>

        </div>

        <div class="right_menu2">

          <div class="tab_content">
            <a href="Interior">
              <div class="menu2_item">
                <input type="radio" name="tabmenu" id="tab01">
                거실
              </div>
            </a>


            <a href="Interior2">
              <div class="menu2_item">
                <input type="radio" name="tabmenu" id="tab02">
                침실
              </div>
            </a>



            <a href="Interior3">
              <div class="menu2_item" id="tab2">
                <input type="radio" name="tabmenu" id="tab03" checked>
                욕실
              </div>
            </a>



            <a href="Interior4">
              <div class="menu2_item">
                <input type="radio" name="tabmenu" id="tab04">
                부엌
              </div>
            </a>

          </div>




        </div>


      </div>

      <div class="Interior_menu_item" id="work01">

        <c:forEach items="${list}" var="li">
          <div class="Interior_item">
            <ul class="Interior_item_img">
              <li>
                <a><img src= ${li.interior_image_path} width="400" alt=""></a>
              </li>
              <div class="txt_box">
                <a href="Interior_detail" target="_blank">

                  <p>${li.interior_name}</p>
                  <p >${li.interior_cash}</p>
                </a>
              </div>

            </ul>

            <div class="q">
              <p>${li.interior_content}</p>
            </div>

          </div>

        </c:forEach>

<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_3(2).jpg" width="400" height="330" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>유로 베이지</p>--%>
<%--                <p>300,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>

<%--          <div class="q">--%>
<%--            <p>다이렉트 욕실 리모델링</p>--%>
<%--          </div>--%>

<%--        </div>--%>

<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_3(3).jpg" width="400" height="330" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>유로 화이트</p>--%>
<%--                <p>400,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>욕실을 리모델링</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_3(4).jpg" width="400" height="330" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>E0300 유로 화이트</p>--%>
<%--                <p>400,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>욕실선반 인테리어</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_3(5).jpg" width="400" height="330" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>유로 화이트</p>--%>
<%--                <p>500,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>제주 욕실인테리어</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_3(6).jpg" width="400" height="330" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>E0600 유로 화이트</p>--%>
<%--                <p>380,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>욕실 짖는 인테리어</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_3(7).jpg" width="400" height="330"alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>E0300 유로 그레이</p>--%>
<%--                <p>400,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>올림피아 욕실 인테리어</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_3(8).jpg" width="400" height="330" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>E0300 타일</p>--%>
<%--                <p>250,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>스포츠 타일</p>--%>
<%--          </div>--%>
<%--        </div>--%>

<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_3(9).jpg" width="400" height="330" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>E0200 유로 화이트</p>--%>
<%--                <p>400,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>이후 욕실 인테리어</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_3(10).jpg" width="400" height="330" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>유로 블랙</p>--%>
<%--                <p>800,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>포포욕실 인테리어</p>--%>
<%--          </div>--%>
<%--        </div>--%>

<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_3(11).jpg" width="400" height="330" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>E0300 유로 화이트</p>--%>
<%--                <p>800,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>원주 욕실 인테리어</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_3(12).jpg" width="400" height="330" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>E0500 유로 베이지</p>--%>
<%--                <p>800,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>다이렉트 욕실 인테리어</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_3(13).jpg" width="400" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>E0300 유로 화이트</p>--%>
<%--                <p>400,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>갤러리같은 우리집</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_3(14).jpg" width="400" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>E0300 유로 블랙</p>--%>
<%--                <p>300,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>항상 꾸민듯 욕실</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_3(15).jpg" width="400" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>E0300 유로 화이트</p>--%>
<%--                <p>400,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>함께 지내는 욕실</p>--%>
<%--          </div>--%>
<%--        </div>--%>


      </div>




    </div>



  </div>


</div>
</div>
<footer class="footer"></footer>
</div>



</body>
</html>
