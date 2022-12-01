<%--
  Created by IntelliJ IDEA.
  User: jyjun
  Date: 2022-11-26
  Time: 오전 6:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--var ProductDto = '<c:out value='${productDto}' />';--%>

<link rel="stylesheet" href="<c:url value='/css/common.css'/> ">
<link rel="stylesheet" href="<c:url value='/css/header.css'/> ">
<link rel="stylesheet" href="<c:url value='/css/deal.css'/> ">
<%--<script src="https://code.jquery.com/jquery-1.12.4.js"></script>--%>
<script src="<c:url value='https://code.jquery.com/jquery-1.12.4.js'/> "></script>
<script src="<c:url value='/js/header.js'/> "></script>
<script src="<c:url value='/js/deal.js'/> "></script>
<%--<script src="/js/header.js"></script>--%>

<script>
    // 소비자가, 가격에 원 하고 , 표시
    var oPrice = ${pInfo.product_price};
    <%--여기에 ${pdto.product_price}--%>
    var sPrice = ${pInfo.product_status==2?"":pInfo.product_price};
    <%--여기에 ${pdto.product_status==2?pdto.product_price/(100/sdto.special_product_discount):pdto.product_price}--%>
    var logoWhite = "<c:url value='/img/headerImg/logo_white.png'/>"
    var logoBlack = "<c:url value='/img/headerImg/logo_black.png'/>"
    var colorLength = ${imgList.size()}
</script>
<head>
    <title>deal</title>
</head>
<body>
<div id="wrap">
    <header class="header">
        <div class="content_area header_top">
            <ul class="top_nav_ul">
                <!-- 회원가입 페이지로 이동 -->
                <li><a href="#">JOIN</a></li>
                <!-- 로그인 페이지로 이동 -->
                <li><a href="#">LOGIN</a></li>
                <!-- 위시리스트 내역 페이지로 이동 -->
                <li><a href="#">WISHLIST</a></li>
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
            <a href="<c:url value='/'/>"><div class="logo"><img src="<c:url value='/img/headerImg/logo_black.png'/> " alt=""></div></a>
        </div>
<%--        src="img/headerImg/logo_black.png"--%>
<%--        href="<c:url value='img/headerImg/logo_black.png'/> "--%>
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
                            <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn1.png'/> "></li>
                        </ul>
                        <ul class="ca_box" onclick="location.href='#';">
                            <li class="ca_txt">Table & Dining</li>
                            <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn2.png'/> "></li>
                        </ul>
                        <ul class="ca_box" onclick="location.href='#';">
                            <li class="ca_txt">Chair</li>
                            <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn3.png'/> "></li>
                        </ul>
                        <ul class="ca_box" onclick="location.href='#';">
                            <li class="ca_txt">Sofa</li>
                            <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn4.png'/> "></li>
                        </ul>
                        <ul class="ca_box" onclick="location.href='#';">
                            <li class="ca_txt">Desk</li>
                            <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn5.png'/> "></li>
                        </ul>
                        <ul class="ca_box" onclick="location.href='#';">
                            <li class="ca_txt">TV Stand & Storage</li>
                            <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn6.png'/> "></li>
                        </ul>
                        <ul class="ca_box" onclick="location.href='#';">
                            <li class="ca_txt">Small Furniture</li>
                            <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn7.png'/> "></li>
                        </ul>
                        <ul class="ca_box" onclick="location.href='#';">
                            <li class="ca_txt">Bed</li>
                            <li class="ca_img"><img src="<c:url value='/img/headerImg/Furn8.png'/> "></li>
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
    <main class="main">
        <div class="content_area">
            <div class="d_sub_nav"></div>
            <div class="d_product">
                <div class="d_img_box">
                        <c:forEach items="${imgList}" var="img">
                            <div class="d_img">
                                <img src="<c:url value='${img.imageDto.image_path}'/>">
                            </div>
                        </c:forEach>
                    <div class="d_indicator">
                        <c:forEach items="${imgList}" var="color">
                                    <%--  ${color.colorCodeDto.color_code_name} 이거를 색상코드화 한 칼럼이 필요 백그라운드에 넣기--%>
                            <div class="d_indi_btn" style="background-color:${color.colorCodeDto.color_code_code}">
<%--                                <c:out value="${color.colorCodeDto.color_code_name}"/>--%>
                            </div>
                        </c:forEach>
                        <!-- 상품의 색상 값 만큼 생성  / 색상에 맞는 이미지 찾아서 이동-->
                    </div>
                </div>
                <div class="d_info_box">
                    <!-- <span class="d_heart_box"></span> -->
                    <div class="d_head">${pInfo.product_name}</div>
                    <table class="d_b_tb2">
                        <tr class="d_b_tb2">
                            <td class="d_title">상품요약정보</td>
                            <td class="d_contents">${pInfo.product_content}</td>
                        </tr>
                        <tr>
                            <td class="d_title">소비자가</td>
                            <td class="d_contents" id="o_price"></td>
                        </tr>
                        <tr>
                            <td class="d_sell_title">가격</td>
                            <td class="d_sell_contents" id="s_price"></td>
                        <%-- 할인된 가격 Productdto.product_price/(100/special_poduct.special_product_discount) 추후에 추가--%>
                        </tr>
                        <tr>
                            <td class="d_title">배송방법</td>
                            <td class="d_contents">택배</td>
                        </tr>
                        <tr>
                            <td class="d_title">배송비</td>
                            <td class="d_contents">
                                <span>2,500원</span>
                                <select name="send">
                                    <option value="ppay">주문시 결제(선결제)</option>
                                    <option value="dpay">수령시 결제(착불)</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="d_title"></td>
                            <td class="d_contents">(50,000원 이상 구매 시 무료)</td>
                        </tr>
                    </table>
                    <table class="d_b_tw2 d_b_bw2">
                        <tr>
                            <td class="d_title">사이즈</td>
                            <td class="d_contents" id="size_contents">
                                <c:forEach items="${list}" var="size">
                                   <div id="size_btn"><c:out value="${size.size_code_name}"/></div>
                                </c:forEach>
                            </td>
                        </tr>
                        <tr>
                            <td class="d_title">색상</td>
                            <td class="d_contents">
                                <c:forEach items="${list2}" var="color">
                                    <div id="size_btn"style="background-color:${color.colorCodeDto.color_code_code}" >
                                            </div>
                                </c:forEach>
                            </td>
                        </tr>
                    </table>
                    <p class="d_p">(최소주문수량 1개 이상 / 최대주문수량 100개 이하)</p>
                    <p class="d_p2">위 옵션선택 박스를 선택하시면 아래에 상품이 추가됩니다.</p>
                    <div class="d_total_price d_b_bw2">
                        <strong>총 상품금액</strong>
                        "(수량) : "
                        <span class="d_total"><strong><em>0</em></strong>" (0개)"</span>
                    </div>
                    <div class="d_btn_box">
                        <div>BUY NOW</div>
                        <div>ADD CART</div>
                        <div>WISHLIST</div>
                    </div>
                </div>
            </div>
            <ul class="d_tab_btn">
                <li> <a href="#sec1">상품상세</a> </li>
                <li> <a href="#sec2">상품후기</a> </li>
                <li> <a href="#sec3">상품문의</a> </li>
                <li> <a href="#sec4">배송안내</a> </li>
                <li> <a href="#sec5">교환/반품정책</a> </li>
            </ul>
            <div class="h1000" id="sec1" >sec1</div>
            <div class="h1000" id="sec2" >sec2</div>
            <div class="h1000" id="sec3" >sec3</div>
            <div class="h1000" id="sec4" >sec4</div>
            <div class="h1000" id="sec5" >sec5</div>
        </div>
        <div class="btn_top"><a href="#wrap">TOP</a></div>

        </html>
    </main>
</div>
</body>
</html>