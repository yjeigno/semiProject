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
<link rel="stylesheet" href="<c:url value='/css/dealReview.css'/> ">
<%--<script src="https://code.jquery.com/jquery-1.12.4.js"></script>--%>
<script src="<c:url value='https://code.jquery.com/jquery-1.12.4.js'/> "></script>
<script src="<c:url value='/js/header.js'/> "></script>
<script src="<c:url value='/js/deal.js'/> "></script>
<script src="<c:url value='/js/dealReview.js'/> "></script>

<%--<script src="/js/header.js"></script>--%>

<script>
    let colorCodeText = [];
    let colorSizeText = [];
    let colorNameText = [];

    // 소비자가, 가격에 원 하고 , 표시
    let oPrice = ${pInfo.product_price};
    <%--여기에 ${pdto.product_price}--%>
    let sPrice = ${pInfo.product_status==2 && SpeDiscount.special_product_end_date>now()
    ?pInfo.product_price*(SpeDiscount.special_product_discount / 100):pInfo.product_price};
    <%--여기에 ${pdto.product_status==2?pdto.product_price/(100/sdto.special_product_discount):pdto.product_price}--%>
    <%--console.log( ${pInfo.product_price*(SpeDiscount.special_product_discount / 100)}  );--%>

    let logoWhite = "<c:url value='/img/headerImg/logo_white.png'/>"
    let logoBlack = "<c:url value='/img/headerImg/logo_black.png'/>"
    let deleteBtn = "<c:url value='/img/dealImg/btn_price_delete.gif'/>"
    let optTitle = "${pInfo.product_name}";
    <%--var colorLength = ${imgList.size()}--%>
        // 사이즈 클릭하면 맞는 색상 나오게 하기..
    function ajaxColor(size_code_name, product_number) {
        let jsonData = {
            "size_code_name": size_code_name,
            "product_number": product_number
        };
        // console.log(jsonData)
        $.ajax({
            type: 'POST',
            url: '/deal/color',
            data: JSON.stringify(jsonData),
            dataType: 'json',
            contentType: "application/json; charset=utf-8",
            success: function (data) {
                //var
                //
                $('#sizeColor').empty();
                let JsonColorList = JSON.stringify(data);
                // console.log("JsonColorList : " +JsonColorList);
                let ParseColorList = JSON.parse(JsonColorList);
                // console.log("ParseColorList : " +ParseColorList);
                for (let i = 0; i < ParseColorList.length; i++) {
                    let colorInfo = ParseColorList[i];
                    // console.log("colorInfo : " +colorInfo)
                    if (colorInfo.colorCodeDto.color_code_code != 'noneColorCode') {
                        colorCodeText[i] = colorInfo.colorCodeDto.color_code_code;
                        colorSizeText[i] = colorInfo.sizeCodeDto.size_code_name;
                        colorNameText[i] = colorInfo.colorCodeDto.color_code_name;
                        let colorId = colorCodeText[i].split("#")[1];
                        // console.log("id : " + colorId);
                        // console.log("1 : " + colorCodeText[i]);
                        // console.log("2 : " + colorNameText[i]);
                        // console.log("3 : " + colorSizeText[i]);

                        /*
                        *  받아온 값을 리스트로 담는다
                        *  클릭할때 리스트 번호로 불러온다
                        **/


                        $('#sizeColor').append(
                            "<div class='sc_btn cClick' id='" + colorId + "," + i +
                            "' style='background-color:" + colorCodeText[i] +
                            ";'>" + "</div>"
                            + "<input class='colorIndex" + i + "' type='hidden' value='" + i + "'>"
                        )
                        <%-- `  <div class='sc_btn cClick' id='${colorId}' style='background-color:${colorCodeText};'></div>`--%>

                    }
                }
            },
            error: function (err) {
                console.log("");
                console.log("[requestPostBodyJson] : [error] : " + JSON.stringify(err));
                console.log("");
            },
            complete: function (data, textStatus) {
                console.log("");
                console.log("[requestPostBodyJson] : [complete] : " + textStatus);
                console.log("");
            }
        })
    }

    function ajaxPagination(page, pageSize, product_number) {
        let jsonData = {
            // "page" : page,
            "page_size": pageSize,
            "product_number": product_number,
            "offset": (page - 1) * pageSize
        }
        $.ajax({
            type: 'POST',
            url: '/deal/qna',
            data: JSON.stringify(jsonData),
            dataType: 'json',
            contentType: "application/json; charset=utf-8",
            success: function (data) {
                var str = '<tr class="d_qna_top d_q_t">'
                    + '<td class="d_qna_top_list">문의유형</td>'
                    + '<td class="d_qna_top_list">문의/답변</td>'
                    + '<td class="d_qna_top_list">작성자</td>'
                    + '<td class="d_qna_top_list">작성일</td>'
                    + '</tr>' ;
                // console.log(data);
                $('.d_q_d').empty();
                $('.d_qna_faq_view').empty();
                let JsonQnaList = JSON.stringify(data);
                // console.log("JsonQnaList : " +JsonQnaList);
                let ParseQnaList = JSON.parse(JsonQnaList);
                // console.log("ParseQnaList : " +ParseQnaList);
                // console.log("ParseQnaListlength : " +ParseQnaList.length)
                function Unix_timestamp(t){
                    var date = new Date(t*1000);
                    var year = date.getFullYear();
                    var month = "0" + (date.getMonth()+1);
                    var day = "0" + date.getDate();
                    var hour = "0" + date.getHours();
                    var minute = "0" + date.getMinutes();
                    var second = "0" + date.getSeconds();
                    return year + "/" + month.substr(-2) + "/" + day.substr(-2) + " " + hour.substr(-2) + ":" + minute.substr(-2) + ":" + second.substr(-2);
                }
                for(let i = 0 ; i< ParseQnaList.length;i++){
                    let QnaInfo = ParseQnaList[i]
                    let memberId = QnaInfo.member_id;
                    let qna_answer = QnaInfo.qna_answer;
                    let qna_category = QnaInfo.qna_category;
                    let qna_content = QnaInfo.qna_content;
                    let qna_register_date = QnaInfo.qna_register_date;
                    let qna_title = QnaInfo.qna_title;
                    let qna_answer_status = QnaInfo.qna_answer_status;
                    console.log(qna_register_date)
                    let qnastatusIf = (qna_answer_status==1?'<div class="d_qna_tag_mark d_qna_tag_active">답변완료</div>':'<div class="d_qna_tag_mark">답변대기</div>')
                    let qnaanswerIf = (qna_answer=="-1"?"답변 준비중입니다.":qna_answer)
                    str += '<tr class="d_qna_top d_q_d">'
                          +     '<td class="d_qna_top_list cell_type">'+qna_category+'</td>'
                          +     '<td class="d_qna_top_list d_qna_faq_box cell_quest">'
                          +     qnastatusIf
                          +         '<div class="d_qna_faq">'
                          +             '<div class="d_qna_faq_tit">'+ qna_title +'</div>'
                          +             '<div class="d_qna_faq_que">'+qna_content+'</div>'
                          +         '</div>'
                          +     '</td>'
                          +     '<td class="d_qna_top_list cell_writer">'+memberId+'</td>'
                          +     '<td class="d_qna_top_list cell_date">'+Unix_timestamp(qna_register_date)+'</td>'
                          + '</tr>'
                          + '<tr class="d_qna_faq_view">'
                          +     '<td colspan="4" class="d_qna_faq_view_qa">'
                          +         '<div class="d_qna_faq_q">'+qna_content+'</div>'
                          +         '<div class="d_qna_faq_a">'
                          +             '<i></i>'
                          +          qnaanswerIf + '</div>'
                          +     '</td>'
                          + '</tr>'

                }
                $('.d_qna_box').html(str);
            },
            error: function (err) {
                console.log("");
                console.log("[requestPostBodyJson] : [error] : " + JSON.stringify(err));
                console.log("");
            },
            complete: function (data, textStatus) {
                $('.d_qna_faq_box').click(function(){
                    let faq_view = $(this).parent('.d_qna_top').next('.d_qna_faq_view').children('.d_qna_faq_view_qa')
                    if(faq_view.children('.d_qna_faq_q').css("display") == "block"){
                        $(this).children('.d_qna_faq').children('.d_qna_faq_tit').removeClass('on')
                        faq_view.children('.d_qna_faq_q').slideUp(400);
                        faq_view.children('.d_qna_faq_a').slideUp(400);
                    }
                    else{
                        $(this).children('.d_qna_faq').children('.d_qna_faq_tit').addClass('on')
                        faq_view.children('.d_qna_faq_q').slideDown(400);
                        faq_view.children('.d_qna_faq_a').slideDown(400);
                    }
                })
                console.log("");
                console.log("[requestPostBodyJson] : [complete] : " + textStatus);
                console.log("");
            }
        })
    }

    function purchase() {

        let product_count = $('.opt_name').length;
        let optionTitle_list = [];
        let size_name_list = [];
        let color_name_list = [];
        let pa_list = [];
        let price_list = [];


        for (let i = 0; i < product_count; i++) {
            let optionTitle = "#optionTitle" + i;
            let color = "#color" + i;
            let pa = "#pa" + i;
            let price = "#price" + i;
            optionTitle_list.push($(optionTitle).text().trim());
            size_name_list.push($(color).text().split("/")[0].trim());
            color_name_list.push($(color).text().split("/")[1].trim());
            pa_list.push($(pa).val());
            price_list.push($(price).val());
        }

        console.log(typeof product_purchase_info_list);

        //create element (form)
        let newForm = $('<form></form>');
        //set attribute (form)
        newForm.attr("name","newForm");
        newForm.attr("method","post");
        newForm.attr("action","/purchase");
        newForm.attr("target","_blank");
        // create element & set attribute (input)
        newForm.append($('<input/>', {type: 'hidden', name: 'optionTitle_list', value: optionTitle_list }));
        newForm.append($('<input/>', {type: 'hidden', name: 'size_name_list', value: size_name_list }));
        newForm.append($('<input/>', {type: 'hidden', name: 'color_name_list', value: color_name_list }));
        newForm.append($('<input/>', {type: 'hidden', name: 'pa_list', value: pa_list }));
        newForm.append($('<input/>', {type: 'hidden', name: 'price_list', value: price_list }));
        // append form (to body)
        newForm.appendTo('body');
        // submit form
        newForm.submit();

        product_list_number = 0;


    }
</script>
<head>
    <title>deal</title>
</head>
<body>
<div id="wrap">
<%--=================================================================================--%>
<%--=================================================================================--%>
<%--================================HEADER===========================================--%>
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
<%--================================HEADER===========================================--%>
<%--=================================================================================--%>
<%--=================================================================================--%>

<%--=================================================================================--%>
<%--=================================================================================--%>
<%--=================================MAIN============================================--%>
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
                            <td class="d_contents sc_contents">
                                <c:forEach items="${sizeList}" var="size">
                                    <%--                                   <div class="sc_btn"><c:out value="${size.sizeCodeDto.size_code_name}"/>--%>
                                    <%--                                   </div>--%>
                                    <a href="#" class="sc_btn sclick"
                                       onclick="ajaxColor('${size.sizeCodeDto.size_code_name}',${pInfo.product_number})">
                                            ${size.sizeCodeDto.size_code_name}
                                    </a>
                                </c:forEach>
                            </td>
                        </tr>
                        <tr>
                            <td class="d_title">색상</td>
                            <td class="d_contents cc_contents" id="sizeColor">
                                <%--                                <c:forEach items="${colorList}" var="color">--%>
                                <%--                                    <div class="sc_btn"style="background-color:${color.colorCodeDto.color_code_code}" >--%>
                                <%--                                            </div>--%>
                                <%--                                </c:forEach>--%>
                            </td>
                        </tr>
                    </table>
                    <form id="purchase" method="post">
                        <p class="d_p">(최소주문수량 1개 이상 / 최대주문수량 100개 이하)</p>
                        <p class="d_p2">위 옵션선택 박스를 선택하시면 아래에 상품이 추가됩니다.</p>
                        <div class="opt_selected">

                        </div>
                        <div class="d_total_price d_b_bw2">
                            <div>TOTAL: <span id="p_tot">0 원</span> (0개)</div>
                        </div>
                        <input type="hidden" name="aaa" value="bbb">
                        <div class="d_btn_box">
                            <%--아래의 버튼을 클릭했을때
                            purcahse form 전송한다. --%>
                            <button id='purchase_button' type='button' onclick='purchase();'>BUY NOW</button>
                            <button>ADD CART</button>
                            <button>WISHLIST</button>

                        </div>

                </div>
            </div>
            <ul class="d_tab_btn">
                <li class="small_btn"><a href="#sec1">상품상세</a></li>
                <li class="small_btn"><a href="#sec2">상품후기</a></li>
                <li class="small_btn"><a href="#sec3">상품문의</a></li>
                <li class="small_btn"><a href="#sec4">배송안내</a></li>
                <li class="small_btn"><a href="#sec5">교환/반품정책</a></li>
            </ul>
            <div class="h1000" id="sec1">
                <c:forEach items="${imgDetail}" var="de">
                <img src="<c:url value='${de.image_path}'/>" alt="">
                </c:forEach>
            </div>
            <div class="h1000" id="sec2" >
                <div class="avg_review_box">
                    <div class="avg_box">
                        <span>상품 만족도</span>
                        <span class="star">★ ★ ★ ★ ★</span>  <!-- 별 플러그인 사용 -->
                        <span>${avgReview}</span>  <!-- 리뷰총점수  / 리뷰개수  -->
                    </div>
                </div>
                <div class="review_box"> <!-- 포토버튼 클릭하면 포토리뷰 나오게 탭형식 -->
                    <h2 class="review_title_font">상품 후기</h2>
                    <div class="review_tap_btn_box">
                        <div class="review_tap_btn" id="photo_btn">포토</div>
                        <div class="review_tap_btn" id="text_btn">텍스트</div>
                        <div id="non_btn"></div>
                    </div>
                    <div class="review_list list_photo">
                        <c:forEach items="${reviewPageList}" var="re">
                        <div class="photo_review">
                            <div class="id_Photo_txt">${re.memberDto.member_id}</div>
                            <div class="photo_review_img"><img src="<c:url value='${re.review_image}'/>" alt=""></div>
                            <div class="review_star">★ ★ ★ ★ ★</div><span class="review_date"><fmt:formatDate value="${re.review_register_date}" pattern="yyyy-MM-dd" type="date"/></span> <!-- 리뷰쓴 날짜 출력  -->
                            <div class="photo_review_txt">${re.review_content}</div>
                        </div>
                        </c:forEach>
                        <div class="d_pagination">
                            <c:if test="${pageHandler.showFirst}">
                                <a href="<c:url value='/deal?page=1&pageSize=${pageHandler.pageSize}' />" class="d_pp d_pagination_a">[처음]</a>
                            </c:if>
                            <c:if test="${pageHandler.showPrev}">
                                <a href="<c:url value='/deal?page=${pageHandler.beginPage-1}&pageSize=${pageHandler.pageSize}' />" class="d_pre d_pagination_a">[이전]</a>
                            </c:if>
                            <c:forEach var="i" begin="${pageHandler.beginPage}" end="${pageHandler.endPage}">
                                <a href="<c:url value='/deal?page=${i}&pageSize=${pageHandler.pageSize}' /> " class="d_pagination_a d_pnum ${i==pageHandler.page?"d_on":""}"> ${i}</a>
                            </c:forEach>
                            <c:if test="${pageHandler.showNext}">
                                <a href="<c:url value='/deal?page=${pageHandler.endPage+1}&pageSize=${pageHandler.pageSize}' />" class="d_pagination_a d_next">[다음]</a>
                            </c:if>
                            <c:if test="${pageHandler.showLast}">
                                <a href="<c:url value='/deal?page=${pageHandler.totalPage}&pageSize=${pageHandler.pageSize}' />" class="d_pagination_a d_next">[마지막]</a>
                            </c:if>
                        </div>
                    </div>

                    <div class="review_list list_text">
                        <c:forEach items="${reviewPageTxtList}" var="re">
                        <div class="text_review">
                            <div class="id_txt_txt">${re.memberDto.member_id}</div>
                            <div class="star_date">
                                <div class="review_text_star">★ ★ ★ ★ ★</div>
                                <div><fmt:formatDate value="${re.review_register_date}" pattern="yyyy-MM-dd" type="date"/></div>
                            </div>
                            <div class="review_product_info">
                                <div class="product_img"><img src="<c:url value='${imgList.get(1).imageDto.image_path}'/>" alt=""></div>
                                <div>
                                    <div class="review_product_name">${re.productDto.product_name}</div>
                                    <div class="review_product_size_color">${re.review_size} / ${re.review_color}</div>
                                </div>

                            </div>
                            <div class="review_text_content">${re.review_content}</div>
                        </div>
                        </c:forEach>
                        <div class="d_pagination">
                            <c:if test="${pageHandlerTxt.showFirst}">
                                <a href="<c:url value='/deal?page=1&pageSize=${pageHandlerTxt.pageSize}' />" class="d_pp d_pagination_a">[처음]</a>
                            </c:if>
                            <c:if test="${pageHandlerTxt.showPrev}">
                                <a href="<c:url value='/deal?page=${pageHandlerTxt.beginPage-1}&pageSize=${pageHandlerTxt.pageSize}' />" class="d_pre d_pagination_a">[이전]</a>
                            </c:if>
                            <c:forEach var="i" begin="${pageHandlerTxt.beginPage}" end="${pageHandlerTxt.endPage}">
                                <a href="<c:url value='/deal?page=${i}&pageSize=${pageHandlerTxt.pageSize}' /> " class="d_pagination_a d_pnum ${i==pageHandlerTxt.page?"d_on":""}"> ${i}</a>
                            </c:forEach>
                            <c:if test="${pageHandlerTxt.showNext}">
                                <a href="<c:url value='/deal?page=${pageHandlerTxt.endPage+1}&pageSize=${pageHandlerTxt.pageSize}' />" class="d_pagination_a d_next">[다음]</a>
                            </c:if>
                            <c:if test="${pageHandler.showLast}">
                                <a href="<c:url value='/deal?page=${pageHandlerTxt.totalPage}&pageSize=${pageHandlerTxt.pageSize}' />"
                                   class="d_pagination_a d_nn">[마지막]</a>
                            </c:if>
                        </div>
                    </div>
                </div>
<%--                <div class="pagination">--%>
<%--                    <c:if test="${pageHandler.showPrev}">--%>
<%--                        <a href="<c:url value='/deal?page=${pageHandler.beginPage-1}&pageSize=${pageHandler.pageSize}' />" class="beginPage">[이전]</a>--%>
<%--                    </c:if>--%>
<%--                    <c:forEach var="i" begin="${pageHandler.beginPage}" end="${pageHandler.endPage}">--%>
<%--                        <a href="<c:url value='/deal?page=${i}&pageSize=${pageHandler.pageSize}' /> " class="page ${i==ph.page?"pageActive":""}"> ${i}</a>--%>
<%--                    </c:forEach>--%>
<%--                    <c:if test="${pageHandler.showNext}">--%>
<%--                        <a href="<c:url value='/deal?page=${pageHandler.endPage+1}&pageSize=${pageHandler.pageSize}' />" class="endPage">[다음]</a>--%>
<%--                    </c:if>--%>
<%--                </div>--%>
            </div>
            <div class="h1000" id="sec3" >
                <div class="d_qna_title">
                    <div class="d_qna_title_txt">상품문의</div>
                    <div class="d_qna_title_noti">
                        상품에 관한 문의가 아닌 배송 / 결제 / 취소 / 교환 / 반품에 대한 문의는 고객센터 &gt; 1:1문의 &gt; 문의하기를 이용해 주시기 바랍니다.
                        비방 / 욕설 / 명예훼손 같은 <span class="point">부적절한 게시물</span> 등록 시 <span class="point">ID 이용 제한</span> 및 <span class="point">게시물이 삭제</span>될 수 있습니다.
                        본인 외 타인이 볼 수 있는 공간으로 <span class="point">개인정보 유출의 위험</span>이 있으므로 <span class="point">개인정보보호</span>로 인해 <span class="point">개인정보가 기재된 게시글은 통보 없이 삭제될 수 있습니다.</span>
                    </div>
                </div>
                <table class="d_qna_box">
                    <tr class="d_qna_top d_q_t">
                        <td class="d_qna_top_list">문의유형</td>
                        <td class="d_qna_top_list">문의/답변</td>
                        <td class="d_qna_top_list">작성자</td>
                        <td class="d_qna_top_list">작성일</td>
                    </tr>
                    <c:forEach items="${qnaList}" var="qna">
                    <tr class="d_qna_top d_q_d">
                        <td class="d_qna_top_list cell_type">${qna.qna_category}</td>
                        <td class="d_qna_top_list d_qna_faq_box cell_quest">
                            <c:if test="${qna.qna_answer_status==1}">
                                <div class="d_qna_tag_mark d_qna_tag_active">답변완료</div>
                            </c:if>
                            <c:if test="${qna.qna_answer_status==0}">
                                <div class="d_qna_tag_mark">답변대기</div>
                            </c:if>
                            <div class="d_qna_faq">
                                <div class="d_qna_faq_tit">${qna.qna_title}</div>
                                <div class="d_qna_faq_que">${qna.qna_content}</div>
                                <!-- <div class="d_qna_faq_ans">3일 걸립니다.</div> -->
                            </div>
                        </td>
                        <td class="d_qna_top_list cell_writer">${qna.member_id}</td>
                        <td class="d_qna_top_list cell_date"><fmt:formatDate value="${qna.qna_register_date}"
                                                                             pattern="yyyy-MM-dd" type="date"/></td>
                    </tr>
                        <tr class="d_qna_faq_view">
                            <td colspan="4" class="d_qna_faq_view_qa">
                                <div class="d_qna_faq_q">${qna.qna_content}</div>

                                <div class="d_qna_faq_a">
                                    <i></i>
                                        ${qna.qna_answer=="-1"?"답변 준비중입니다.":qna.qna_answer}</div>
                            </td>
                        </tr>
                    </c:forEach>
                    <!-- ////////////////////////////////////////////////////// -->
                </table>
                <div class="d_pagination">
                    <c:if test="${phQna.showFirst}">
                        <div onclick="ajaxPagination(1,'${phQna.pageSize}','${pInfo.product_number}')"
                             class="d_pp d_pagination_a">[처음]
                        </div>
                    </c:if>
                    <c:if test="${phQna.showPrev}">
                        <div onclick="ajaxPagination('${phQna.beginPage-1}','${phQna.pageSize}','${pInfo.product_number}')"
                             class="d_pre d_pagination_a">[이전]
                        </div>
                    </c:if>
                    <c:forEach var="i" begin="${phQna.beginPage}" end="${phQna.endPage}">
                        <div onclick="ajaxPagination('${i}','${phQna.pageSize}','${pInfo.product_number}')"
                             class="d_pagination_a d_pnum ${i==phQna.page?"d_on":""}"> ${i}</div>
                    </c:forEach>
                    <c:if test="${phQna.showNext}">
                        <div onclick="ajaxPagination('${phQna.endPage+1}','${phQna.pageSize}','${pInfo.product_number}')"
                             class="d_next d_pagination_a">[다음]
                        </div>
                    </c:if>
                    <c:if test="${pageHandler.showLast}">
                        <div onclick="ajaxPagination('${phQna.totalPage}','${phQna.pageSize}','${pInfo.product_number}')"
                             class="d_nn d_pagination_a">[마지막]
                        </div>
                    </c:if>
                </div>
                <%--                <div class="d_pagination">--%>
                <%--                    <c:if test="${phQna.showFirst}">--%>
                <%--                        <a href="<c:url value='/deal?page=1&pageSize=${phQna.pageSize}' />" class="d_pp d_pagination_a">[처음]</a>--%>
                <%--                    </c:if>--%>
                <%--                    <c:if test="${phQna.showPrev}">--%>
                <%--                        <a href="<c:url value='/deal?page=${phQna.beginPage-1}&pageSize=${phQna.pageSize}' />" class="d_pre d_pagination_a">[이전]</a>--%>
                <%--                    </c:if>--%>
                <%--                    <c:forEach var="i" begin="${phQna.beginPage}" end="${phQna.endPage}">--%>
                <%--                        <a href="<c:url value='/deal?page=${i}&pageSize=${phQna.pageSize}' /> " class="d_pagination_a d_pnum ${i==phQna.page?"d_on":""}"> ${i}</a>--%>
                <%--                    </c:forEach>--%>
                <%--                    <c:if test="${phQna.showNext}">--%>
                <%--                        <a href="<c:url value='/deal?page=${phQna.endPage+1}&pageSize=${phQna.pageSize}' />" class="d_pagination_a d_next">[다음]</a>--%>
                <%--                    </c:if>--%>
                <%--                    <c:if test="${pageHandler.showLast}">--%>
                <%--                        <a href="<c:url value='/deal?page=${phQna.totalPage}&pageSize=${phQna.pageSize}' />" class="d_pagination_a d_next">[마지막]</a>--%>
                <%--                    </c:if>--%>
                <%--                </div>--%>
            </div>
            <div class="h1000" id="sec4">
                <img src="<c:url value='/img/dealImg/delivery.jpg'/> ">
            </div>
            <div class="h1000" id="sec5">
                <div class="d_refund_txt"> 교환/반품정책</div>
                <img src="<c:url value='/img/dealImg/refund.jpg'/> ">
            </div>
        </div>

        <div class="btn_top"><a href="#wrap">TOP</a></div>
        <%--=================================MAIN============================================--%>
        <%--=================================================================================--%>
        <%--=================================================================================--%>
        <footer class="footer">푸터입니당</footer>
        </html>
    </main>
</div>
</body>
</html>