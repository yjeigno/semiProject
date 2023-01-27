<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 이준환
  Date: 2022-11-19
  Time: 오후 8:45
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
    <title>Interior4</title>
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
              <div class="menu2_item">
                <input type="radio" name="tabmenu" id="tab03">
                욕실
              </div>
            </a>



            <a href="Interior4" class="ck">
              <div class="menu2_item" id="tab2">
                <input type="radio" name="tabmenu" id="tab04" checked>
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
<%--              <a><img src="img/Interior/interior_4(2).jpg" width="400" height="330" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>식탁인테리어</p>--%>
<%--                <p>200,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>

<%--          <div class="q">--%>
<%--            <p>포레스트빌리지</p>--%>
<%--          </div>--%>

<%--        </div>--%>

<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_4(3).jpg" width="400" height="330" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>E0300 싱크대</p>--%>
<%--                <p>400,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>다양한 컬러를 활용한 주방 인테리어</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_4(4).jpg" width="400" height="330"alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>베이지</p>--%>
<%--                <p>400,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>반셀프 주방 인테리어</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_4(5).jpg" width="400" height="330" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>심플한 주방</p>--%>
<%--                <p>200,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>4가지 방법으로 꾸며본 행복주택</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_4(6).jpg" width="400" height="330" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>E0900 유로 베이지</p>--%>
<%--                <p>400,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>베스트 주방</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_4(7).jpg" width="400" height="330" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>E0300 심플 베이지</p>--%>
<%--                <p>800,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>행복주택 인테리어</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_4(8).jpg" width="400" height="330" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>E0200 베이지</p>--%>
<%--                <p>400,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>맛 좋은 주방</p>--%>
<%--          </div>--%>
<%--        </div>--%>

<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_4(9).jpg" width="400" height="330" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>E0300 유로 화이트</p>--%>
<%--                <p>400,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>차분한 우드톤 주방</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_4(10).jpg" width="400" height="330" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>유로 화이트</p>--%>
<%--                <p>300,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>싱글라이프 인테리어</p>--%>
<%--          </div>--%>
<%--        </div>--%>

<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_4(11).jpg" width="400" height="330" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>달콤한 주방</p>--%>
<%--                <p>300,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>다움홈</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_4(12).jpg" width="400" height="330" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>E0300 유로 베이지</p>--%>
<%--                <p>500,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>빈티지 감성과 로망이 담긴 주방</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_4(13).jpg" width="400" height="330" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>300 유로 화이트</p>--%>
<%--                <p>800,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>곳곳이 갤러리같은 주방</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_4(14).jpg" width="400" height="330"  alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>심플 베이지 주방</p>--%>
<%--                <p>300,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>우드톤으로 고급스러운 부엌</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--        <div class="Interior_item">--%>
<%--          <ul class="Interior_item_img">--%>
<%--            <li>--%>
<%--              <a><img src="img/Interior/interior_4(15).jpg" width="400" height="330" alt=""></a>--%>
<%--            </li>--%>
<%--            <div class="txt_box">--%>
<%--              <a href="Interior_detail" target="_blank">--%>
<%--                <p>E0300 심플 화이트</p>--%>
<%--                <p>800,000원~</p>--%>
<%--              </a>--%>
<%--            </div>--%>
<%--          </ul>--%>
<%--          <div class="q">--%>
<%--            <p>심플하고 화려한 부엌</p>--%>
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
