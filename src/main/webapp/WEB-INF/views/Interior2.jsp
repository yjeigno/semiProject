<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 이준환
  Date: 2022-11-19
  Time: 오후 8:41
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
    <title>Interior2</title>
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
                        <a href="Interior" class="bot">
                            <div class="menu2_item">
                                <input type="radio" name="tabmenu" id="tab01" >
                                거실
                            </div>
                        </a>


                        <a href="Interior2" class="bot">
                            <div class="menu2_item" id="tab2">
                                <input type="radio" name="tabmenu" id="tab02" checked>
                                침실
                            </div>
                        </a>



                        <a href="Interior3">
                            <div class="menu2_item">
                                <input type="radio" name="tabmenu">
                                욕실
                            </div>
                        </a>


                        <a href="Interior4">
                            <div class="menu2_item">
                                <input type="radio" name="tabmenu">
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

                                <p><!--북유럽&미드센트리 모던-->${li.interior_name}</p>
                                <p ><!--400,000원~-->${li.interior_cash}</p>
                            </a>
                        </div>

                    </ul>

                    <div class="q">
                    <p><!--싱그러움이 물씬 느껴지는, 미래의 신혼하우스--> ${li.interior_content}</p>
                    </div>

                </div>

    </c:forEach>

<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior//interior_2(2).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>모던&유니크/믹스매치</p>--%>
<%--                                <p>700,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>

<%--                    <div class="q">--%>
<%--                        <p>통통튀는 색을 좋아하는 딸</p>--%>
<%--                    </div>--%>

<%--                </div>--%>

<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior//interior_2(3).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>미니멀&모던내추럴</p>--%>
<%--                                <p>800,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p>비염탈출! 직장인의 미니멀 라이프 하우스</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior//interior_2(4).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>미니멀</p>--%>
<%--                                <p>500,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p>반셀프 리모델링으로 완성한 인테리어</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior//interior_2(5).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>유니크/믹스매치&미니멀</p>--%>
<%--                                <p>900,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p>투룸을 지혜롭게 활용한 직장인의 인테리어</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior//interior_2(6).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>유니크/믹스매치&내추럴</p>--%>
<%--                                <p>900,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p>휴양지를 좋아하는 맞벌이 부부의 첫 집</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior//interior_2(7).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>내추럴&미니멀</p>--%>
<%--                                <p>800,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p>부모님과 함께 살아도 자취방처럼 꾸며요!</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior//interior_2(8).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>모던</p>--%>
<%--                                <p>400,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p>70평처럼 활용하는 7평 원룸</p>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior//interior_2(9).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>미니멀&모던</p>--%>
<%--                                <p>700,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p>깔끔한 블랙톤으로 꾸민, 살고 싶은 집</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior/interior_2(10).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>미니멀</p>--%>
<%--                                <p>200,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p>맞춤 배치&수납으로 완성한 오피스텔형 원룸</p>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior/interior_2(11).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>러블리/로맨틱&내추럴</p>--%>
<%--                                <p>800,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p>쉼과 즐거움이 있는 집, 더 시간을 보내고 싶어요</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior/interior_2(12).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>유로 화이트</p>--%>
<%--                                <p>400,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p> 화이트톤 원룸 인테리어</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior/interior_2(13).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>미드센트리 모던&내추럴</p>--%>
<%--                                <p>600,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p>브라보! 마이 싱글라이프</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior/interior_2(14).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>유니크/믹스매치&미드센트리 모던</p>--%>
<%--                                <p>600,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p>노하우가 담긴 취향저격 원룸</p>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <div class="Interior_item">--%>
<%--                    <ul class="Interior_item_img">--%>
<%--                        <li>--%>
<%--                            <a><img src="img/Interior/interior_2(15).jpg" width="400" alt=""></a>--%>
<%--                        </li>--%>
<%--                        <div class="txt_box">--%>
<%--                            <a href="Interior_detail" target="_blank">--%>
<%--                                <p>클래식/앤티크&모던내추럴</p>--%>
<%--                                <p>1,000,000원~</p>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                    <div class="q">--%>
<%--                        <p>블랙&우드톤이 따뜻해보이는, 실용적인 우리집</p>--%>
<%--                    </div>--%>
<%--                </div>--%>



            </div>





        </div>



    </div>


</div>
</div>
<footer class="footer"></footer>
</div>



</body>
</html>
