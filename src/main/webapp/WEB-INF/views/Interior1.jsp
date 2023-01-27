<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 이준환
  Date: 2022-11-19
  Time: 오후 7:02
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
    <title>Interior1</title>
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
                        <a href=Interior>
                            <div class="menu2_item" id="tab2">
                                <input type="radio" name="tabmenu" id="tab01" checked>
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


           <!-- 반복시작 -->
               <c:forEach items="${list}" var="li">


                <div class="Interior_item">
                    <ul class="Interior_item_img">
                        <li>

                            <a><img src= ${li.interior_image_path} width="400" alt=""></a>
                        </li>

                        <div class="txt_box">
                            <a href="Interior_detail" target="_blank">

                                <p><!--모던&빈티지-->${li.interior_name}</p>

                                <p ><!--670,000원~-->${li.interior_cash}</p>
                            </a>
                        </div>


                    </ul>

                    <div class="q">
                        <p class="w">${li.interior_content}</p>
                    </div>

                </div>

                <!-- 반복 끝 -->



<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior/interior_1(2).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>미드센트리 모던&빈티지</p>--%>
<%--                                <p>2,400,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>

<%--                    <div class="q">--%>
<%--                        <p class="w">미국 패스트푸드 가게 무드를 담은 공간</p>--%>
<%--                    </div>--%>

<%--                </div>--%>

<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior/interior_1(3).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>미드센트리 모던&북유럽</p>--%>
<%--                                <p>3,100,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p class="w">3인 4색 컬러를 활용한 인테리어</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior/interior_1(4).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>미니멀</p>--%>
<%--                                <p>400,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p class="w">반셀프 리모델링으로 완성한 인테리어</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior/interior_1(5).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>내추럴</p>--%>
<%--                                <p>600,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p class="w">4가지 방법으로 꾸며본 행복주택 44형</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior/interior_1(6).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>내추럴&모던</p>--%>
<%--                                <p>2,200,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p class="w">여가시간에 진심인 집돌이&집순이의 집</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior/interior_1(7).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>내추럴</p>--%>
<%--                                <p>800,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p class="w">고양이와 함께 살아가는 행복주택 인테리어</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior/interior_1(8).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>모던내추럴&유니크/믹스매치</p>--%>
<%--                                <p>2,400,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p class="w">집순이 대가족이 사는 집</p>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior/interior_1(9).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>유니크/믹스매치</p>--%>
<%--                                <p>2,400,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p class="w">차분한 우드톤 거실이 있는 우리집</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior/interior_1(10).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>미니멀</p>--%>
<%--                                <p>1,200,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p class="w">로망과 현실을 생각한 싱글라이프 인테리어</p>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior/interior_1(11).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>빈티지&내추럴</p>--%>
<%--                                <p>2,400,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p class="w">카페와 편집숍 느낌 가득한 집</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior/interior_1(12).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>빈티지&클래식/앤티크</p>--%>
<%--                                <p>3,400,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p class="w">빈티지 감성과 로망이 담긴 집</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior/interior_1(13).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>모던내추럴</p>--%>
<%--                                <p>1,100,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p class="w">곳곳이 갤러리같은 우리집</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior/interior_1(14).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>모던내추럴&빈티지</p>--%>
<%--                                <p>3,200,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p class="w">곳우드톤으로 빈티지하게 꾸민 집</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                --%>
<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior/interior_1(15).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>클래식/앤티크</p>--%>
<%--                                <p>800,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p class="w">반려견과 함께 지내는 투룸</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
               </c:forEach>




            </div>



        </div>



    </div>


</div>
</div>
<footer class="footer"></footer>
</div>


</body>
</html>
