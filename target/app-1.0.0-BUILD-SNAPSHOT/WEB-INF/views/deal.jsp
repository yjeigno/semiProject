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
<%--<link rel="stylesheet" href="<c:url value='/css/header.css'/> ">--%>
<link rel="stylesheet" href="<c:url value='/css/deal.css'/> ">
<link rel="stylesheet" href="<c:url value='/css/dealReview.css'/> ">
<%--<script src="https://code.jquery.com/jquery-1.12.4.js"></script>--%>
<script src="<c:url value='https://code.jquery.com/jquery-1.12.4.js'/> "></script>
<%--<script src="<c:url value='/js/header.js'/> "></script>--%>
<script src="<c:url value='/js/deal.js'/> "></script>
<script src="<c:url value='/js/dealReview.js'/> "></script>

<%--<script src="/js/header.js"></script>--%>

<script>
    ajaxPagination(1, 10, ${pInfo.product_number})
    let colorCodeText = [];
    let colorSizeText = [];
    let colorNameText = [];

    // 소비자가, 가격에 원 하고 , 표시
    let oPrice = ${pInfo.product_price};
    <%--여기에 ${pdto.product_price}--%>
    let sPrice = ${pInfo.product_status==2?(pInfo.product_price - pInfo.product_price*(SpeDiscount.special_product_discount / 100)):pInfo.product_price};
    <%--여기에 ${pdto.product_status==2?pdto.product_price/(100/sdto.special_product_discount):pdto.product_price}--%>
    <%--console.log( ${pInfo.product_price*(SpeDiscount.special_product_discount / 100)}  );--%>

    <%--let logoWhite = "<c:url value='/img/headerImg/logo_white.png'/>"--%>
    <%--let logoBlack = "<c:url value='/img/headerImg/logo_black.png'/>"--%>
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
                        $('#sizeColor').append(
                            "<div class='sc_btn cClick' id='" + colorId + "," + i +
                            "' style='background-color:" + colorCodeText[i] +
                            ";'>" + "</div>"
                            + "<input class='colorIndex" + i + "' type='hidden' value='" + i + "'>"
                        )
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
            "page" : page,
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
                // var pagination = "";
                // console.log(data);
                $('.d_q_d').empty();
                $('.d_qna_faq_view').empty();
                let JsonQnaList = JSON.stringify(data);
                // console.log("JsonQnaList : " +JsonQnaList);
                let ParseQnaList = JSON.parse(JsonQnaList);
                // console.log("ParseQnaList : " +ParseQnaList);
                // console.log("ParseQnaListlength : " +ParseQnaList.length)
                // let ph = data.qnaPageHanlder;
                function Unix_timestamp(t){
                    var date = new Date(t);
                    var year = date.getFullYear();
                    var month = "0" + (date.getMonth()+1);
                    var day = "0" + date.getDate();
                    var hour = "0" + date.getHours();
                    var minute = "0" + date.getMinutes();
                    var second = "0" + date.getSeconds();
                    return year + "-" + month.substr(-2) + "-" + day.substr(-2)  ;
                    // " " + hour.substr(-2) + ":" + minute.substr(-2) + ":" + second.substr(-2)
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
                    let qna_product_number = QnaInfo.product_number;
                    console.log(qna_register_date)
                    let qnastatusIf = (qna_answer_status==1?'<div class="d_qna_tag_mark d_qna_tag_active">답변완료</div>':'<div class="d_qna_tag_mark">답변대기</div>')
                    let qnaanswerIf = (qna_answer=="-1"?"답변 준비중입니다.":qna_answer)
                    let cate2 = (qna_category==2?"결제":"배송")
                    let cate = (qna_category==1?"상품":cate2)


                    str += '<tr class="d_qna_top d_q_d">'
                          +     '<td class="d_qna_top_list cell_type">'+cate+'</td>'
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

                    pagination +=  '<div onclick="ajaxPagination(1,10,"'+qna_product_number+'")" class="d_pp d_pagination_a">[처음] </div>'
                                + '<div onclick="ajaxPagination("'+ (ph.beginPage-1) +'",10,"'+qna_product_number+'")" class="d_pre d_pagination_a">[이전] </div>'
                                + 'for(let i = 0 ; i<'
                                <%--+ <c:forEach var="i" begin="${phQna.beginPage}" end="${phQna.endPage}">--%>
                                <%--    <div onclick="ajaxPagination('${i}','${phQna.pageSize}','${pInfo.product_number}')"--%>
                                <%--class="d_pagination_a d_pnum ${i==phQna.page?"d_on":""}"> ${i}</div>--%>

<%--                </c:forEach>--%>



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
    <jsp:include page="header.jsp" />
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
                                    <a href="#" class="sc_btn sclick"
                                       onclick="ajaxColor('${size.sizeCodeDto.size_code_name}',${pInfo.product_number})">${size.sizeCodeDto.size_code_name}
                                    </a>
                                </c:forEach>
                            </td>
                        </tr>
                        <tr>
                            <td class="d_title">색상</td>
                            <td class="d_contents cc_contents" id="sizeColor">
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
<%--                                <div class="product_img"><img src="<c:url value='${}'/>" alt=""></div>--%>
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