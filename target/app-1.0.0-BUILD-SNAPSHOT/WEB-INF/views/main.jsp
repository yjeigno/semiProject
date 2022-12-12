<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page session="false" %>
<c:set var="logInOutLink" value="${ pageContext.request.getSession(false).getAttribute('member_id')==null ? '/login/login':'/login/logout' }" />
<c:set var="logInOutTxt" value="${ pageContext.request.getSession(false).getAttribute('member_id')==null ? 'LOGIN':'LOGOUT' }" />
<c:set var="memberId" value="${ pageContext.request.getSession(false).getAttribute('member_id')==null ? '' : pageContext.request.getSession(false).getAttribute('member_id') }" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인페이지</title>
    <script src="<c:url value='https://code.jquery.com/jquery-1.12.4.js'/>"></script>
    <script src="<c:url value='/js/main.js'/>"></script>
    <script src="<c:url value='/js/main_cart.js'/>"></script>
    <link rel="stylesheet" href="<c:url value='/css/main.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
</head>
<body>
<div id="wrap">

<%--    ////////////////////////////////////장바구니//////////////////////////////////////////--%>
    <div class="basket_box">
<%--        장바구니 간소화--%>
        <div class="basket_min">
            <div class="basket_icon"><img src="./img/main/cart_img.png" class="cart_img" alt=""></div>
            <div class="basket_total_quentity"></div>
        </div>

        <form class="basket_pan">
            <input type="hidden" name="cmd" value="order">
<%--            <!-- 장바구니 카테고리  -->--%>
            <div class="basket_title">
                <div class="row bkt_check">선택</div>
                <div class="row bkt_img">이미지</div>
                <div class="row bkt_product_name">상품명</div>
                <div class="row bkt_product_size">사이즈</div>
                <div class="row bkt_product_color">색상</div>
                <div class="row bkt_product_price">가격</div>
                <div class="row bkt_product_quentity">수량</div>
                <div class="row bkt_product_delete">삭제</div>
            </div>
            <!-- 장바구니 상품 -->
            <div class="basket_items">
                <div class="basket_item_data">
                    <div class="row basket_item_check">
                        <input type="checkbox" name="item_check" value="260" checked="" onclick="javascript:basket.checkItem();">
                    </div>

                    <!-- 상품 상세 페이지 이동 생각 할것(img 테이블 > image_number(PK)) -->
                    <div class="row basket_product_img">
                        <a href="#"><img src="" alt=""></a>
                    </div>
                    <!-- 상품 상세 페이지 이동 생각 할것(product 테이블 > product_name(image_numberPK)) -->
                    <div class="row basket_product_name"><a href="">상품명</a></div>

                    <div class="row basket_product_size"><a href="">사이즈</a></div>

                    <div class="row basket_product_color"><a href="">색상</a></div>

                    <div class="row basket_product_price"><a href="">100.000원</a></div>

                    <div class="row basket_product_quentity">1</div>

                    <div class="row basket_product_delete"><a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delItem();">삭제</a></div>
                </div>
            </div>
        </form>
    </div>




<%--    <!-- 팝업배너 -->--%>
    <input type="checkbox" value="close" id="close">
    <div class="event_banner">
        <a href="specialPrice"><img src="./img/main/event_banner.png " alt="" id="event_img"></a>
        <label for="close" class="close_img"><img src="./img/main/X.png"  alt=""></label>
    </div>


    <jsp:include page="header.jsp" />


    <div class="main_banner">
        <a href="#" class="banner"><img src="<c:url value='/img/main/mainbanner_1.png'/>" alt=""></a>
        <a href="#" class="banner"><img src="<c:url value='/img/main/mainbanner_2.png'/>" alt=""></a>
        <a href="#" class="banner"><img src="<c:url value='/img/main/mainbanner_3.png'/>" alt=""></a>


        <input type="button" class="btn_slide" id="btn_slide_L">
        <input type="button" class="btn_slide" id="btn_slide_R">


        <div class="circle_indicator">

        </div>
    </div>
    <div class="main_sec main_sec_new">
        <div class="sec_title">
            <div class="main_title">NEW ARRIVALS</div>
            <br>
            <h4 class="sub_title">한샘의 새로운 상품을 구경하세요.</h4>
            <a href="<c:url value='/search.do?search=가구&page=1&pageSize=20&sort=new'/>"><div class="more new">More</div></a>
        </div>

        <div class="items_area">

            <c:forEach items="${newImgList}" var="p" begin="2" end="5">

            <div class="item">
                <a href="/deal?product_number=${p.product_number}">
                <div class="img_box"><img class="img_resize" width="280px" height="280px" src="<c:url value='${p.image_path}'/>"></div>
                <h4 class ="p_txt">${p.product_name}</h4>
                <h5 class ="p_txt">${p.product_content}</h5>
                <h5 class ="p_txt">${p.product_price}</h5>
                </a>
            </div>
            </c:forEach>
        </div>




        <div class="main_sec main_sec_best">
            <div class="sec_title">
                <div class="main_title">BEST PRODUCTS</div>
                <br>
                <h4 class="sub_title">한샘의 인기 상품을 구경하세요.</h4>
                <a href="<c:url value='/search.do?search=가구&page=1&pageSize=20&sort=popular'/>"><div class="more new">More</div></a>
            </div>

            <div class="items_area">
                <c:forEach items="${newImgList}" var="p" begin="6" end="9">
                    <div class="item">
                        <a href="/deal?product_number=${p.product_number}">
                        <div class="img_box"><img class="img_resize" width="280px" height="280px" src="<c:url value='${p.image_path}'/>"></div>
                        <h4 class ="p_txt">${p.product_name}</h4>
                        <h5 class ="p_txt">${p.product_content}</h5>
                        <h5 class ="p_txt">${p.product_price}</h5>
                        </a>
                    </div>
                </c:forEach>
            </div>



            <div class="main_sec">
                <div class="sec_title">
                    <div class="main_title">HANSAM INTERIORS</div>
                    <br>
                    <h4 class="sub_title">한샘제품으로 꾸민 인테리어를 구경하세요.</h4>
                    <a href="<c:url value='/Interior'/>"><div class="more interior">More</div></a>
                </div>

                <div class="items_area">
                    <c:forEach items="${list}" var="b" begin="0" end="3">
                    <div class="item">
<%--                        <a href="/deal?interior_number=${b.interior_number}">--%>
                            <a href="/Interior_detail">
                        <div class="img_box"><img class="img_resize" width="280px" height="280px" src=${b.interior_image_path} alt="" ></div>
                        <div class="item_txt">
                            <h4 class ="p_txt">${b.interior_name}</h4>
                            <h5 class ="p_txt">${b.interior_content}</h5>
                        </div>
                        </a>
                    </div>
                    </c:forEach>
                </div>
            </div>



        </div>
    </div>
    <footer class="footer"></footer>

</div>

</body>
</html>