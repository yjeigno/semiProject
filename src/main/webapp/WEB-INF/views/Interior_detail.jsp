<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 이준환
  Date: 2022-11-20
  Time: 오전 12:48
  To change this template use File | Settings | File Templates.
--%>
<link rel="stylesheet" href="<c:url value='/css/common.css'/> ">
<link rel="stylesheet" href="<c:url value='/css/header.css'/> ">
<link rel="stylesheet" href="<c:url value='/css/Interior_detail.css'/> ">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="<c:url value='/js/header.js'/> "></script>
<script src="<c:url value='/js/Interior_detail.js'/> "></script>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Interior_detail</title>
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



  <div class="Interior_main">

    <div class="Interior_container">
      <div class="Interior_title_top"><h1>원룸 공간분리! 원룸도 쓰리룸처럼 배치하기</h1></div>

      <div class="Interior_title_bot">
        <div class="Interior_title_txt">
          <dt class="Interior_tt">주거형태</dt>
          <dd class="Interior_ttt">아파트</dd>
        </div>

        <div class="Interior_title_txt">
          <dt class="Interior_tt">전용면적</dt>
          <dd class="Interior_ttt">26.86㎡</dd>
        </div>

        <div class="Interior_title_txt">
          <dt class="Interior_tt">방 개수</dt>
          <dd class="Interior_ttt">1</dd>
        </div>

        <div class="Interior_title_txt">
          <dt class="Interior_tt">베이 수</dt>
          <dd class="Interior_ttt">1</dd>
        </div>

        <div class="Interior_title_txt">
          <dt class="Interior_tt">가족형태</dt>
          <dd class="Interior_ttt">싱글라이프</dd>
        </div>

        <div class="Interior_title_txt">
          <dt class="Interior_tt">스타일</dt>
          <dd class="Interior_ttt">모던&빈티지</dd>
        </div>
      </div>
      <div class="container_bot">
        <h2 class="Interior_box">한눈에 보기</h2>
        <h2 class="Interior_box1">자세히 보기</h2>


        <div class="Interior_box4">
          <div class="Interior_item_img">

            <img src="img/Interior/interior_5(1).jpg" width="100%" height="350px" alt="">


            <img src="img/Interior/interior_5(2).jpg" width="100%" height="350px" alt="" class="Interior_img0">


            <button class="Interior_btn" id="btn1" type="button">+</button>
            <button class="Interior_btn" id="btn2" type="button">+</button>
            <button class="Interior_btn" id="btn3" type="button">+</button>
            <button class="Interior_btn" id="btn4" type="button">+</button>
            <button class="Interior_btn" id="btn5" type="button">+</button>

            <div class="Interior_item_box">
              <div class="Interior_item_list">



                 <ul class="Interior_case">


                     <li class="Interior_case_box">
                      <div>${product_number} </div>
                       <a href="">
                      <img class="Interior_case_img" id="Interior_box1" src="img/Interior/interior_5(3).jpg"  alt="">
                       </a>
                     </li>



                   <li class="Interior_case_box">
                     <div>${product_number} </div>
                     <a href="">
                      <img class="Interior_case_img" id="Interior_box2" src="img/Interior/interior_5(4).jpg"  alt="">
                    </a>

                  </li>



                   <li class="Interior_case_box">
                     <div>${product_number} </div>
                     <a href="">
                      <img class="Interior_case_img" id="Interior_box3" src="img/Interior/interior_5(5).jpg" width="100%" alt="">
                    </a>

                  </li>

                  <li class="Interior_case_box" >
                    <div>${product_number} </div>
                    <a href="">
                      <img class="Interior_case_img" id="Interior_box4" src="img/Interior/interior_5(6).jpg" width="100%" alt="">
                    </a>

                  </li>

                  <li class="Interior_case_box">
                    <div>${product_number} </div>
                    <a href="">
                      <img class="Interior_case_img" id="Interior_box5" src="img/Interior/interior_5(7).jpg" width="100%" alt="">
                    </a>

                  </li>

                </ul>


              </div>

            </div>

          </div>

          <p class="Interior_arrow_box" id="arrow1">파스타 2S 렌지대 겸 조리대 185,000원
            <img src="img/Interior/interior_5(3).jpg" width="100%" style="height:80%" alt="">
          </p>

          <p class="Interior_arrow_box" id="arrow2">반자동머신 249,000원
            <img src="img/Interior/interior_5(4).jpg" width="100%" style="height:80%" alt="">
          </p>

          <p class="Interior_arrow_box" id="arrow3">아이코나 전기주전자 89,000원
            <img src="img/Interior/interior_5(5).jpg" width="100%" style="height:80%" alt="">
          </p>
          <p class="Interior_arrow_box" id="arrow4">데일리 단모 사계절 원형 러그 카페트 13,900원
            <img src="img/Interior/interior_5(6).jpg" width="100%" style="height:75%" alt="">
          </p>
          <p class="Interior_arrow_box" id="arrow5">신혼집 인테리어 포스터 33,500원
            <img src="img/Interior/interior_5(7).jpg" width="100%" style="height:80%" alt="">
          </p>



        </div>






        <div class="Interior_box2">
          <img class="Interior_wimg" src="img/Interior/interior_5(0).png">
        </div>


        <div class="Interior_box3">
          <div class="Interior_title_box"><h2>홈 데코 정보</h2></div>

          <div class="Interior_list">
            <dt>주거형태</dt>
            <dd>아파트</dd>
          </div>


          <div class="Interior_list">
            <dt>전용면적</dt>
            <dd>26.86㎡</dd>
          </div>

          <div class="Interior_list">
            <dt>방 개수</dt>
            <dd class="Interior_list_t">1</dd>
          </div>

          <div class="Interior_list">
            <dt>가족유형</dt>
            <dd class="Interior_list_tt">싱글라이프</dd>
          </div>

          <div class="Interior_list">
            <dt>스타일</dt>
            <dd class="Interior_list_ttt">모던&빈티지</dd>
          </div>

        </div>




      </div>
    </div>



  </div>




  <footer class="footer"></footer>

</div>

</body>
</html>
