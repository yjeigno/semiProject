<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="userId" value="${pageContext.request.getSession(false).getAttribute('member_id')==null?'':pageContext.request.getSession(false).getAttribute('member_id')}" />
<jsp:useBean id="today" class="java.util.Date" />
<fmt:formatDate value="${today}" pattern="yyyyMMddHHmm" var="nowDate"/>
<!DOCTYPE html>
<html lang="en">
<head>
<%--    <script>--%>
<%--        history.replaceState({},null,location.pathname+"#${sc.search}");--%>
<%--    </script>--%>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hanssem</title>
    <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
    <script defer src="<c:url value="./js/search.js"><c:param name="dt" value="${nowDate}"/></c:url>"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="./css/common.css"><c:param name="dt" value="${nowDate}"/></c:url>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="./css/search.css"><c:param name="dt" value="${nowDate}"/></c:url>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="./css/search.scss"><c:param name="dt" value="${nowDate}"/></c:url>"/>
</head>
<body>
<div id="wrap">
    <div id="load">
        <img src="./img/etc/1487.gif" alt="loading">
    </div>
    <jsp:include page="header.jsp" />

    <main id="main">
        <div class="container">
            <div class="src_title">
                <h1>${param.search}</h1>
                <span> 검색 결과</span>
            </div>
            <div class="mobile_filter">
                <div class="btn_filter">
                    <section class="mobile_filter">

                    </section>
                </div>
                <script>

                </script>
                <div class="btn_sort" onclick="mobileSort()">
                    <section class="mobile_sort">
                        <input type="radio" name="sort" id="sort_pop" value="popular" ${sc.sort=="popular"?"checked":""}>
                        <label for="sort_pop"><span class="outer_circle"><span class="inner_circle"></span> </span>인기상품순</label>
                        <input type="radio" name="sort" id="sort_rate" value="rate" ${sc.sort=="rate"?"checked":""}>
                        <label for="sort_rate"><span class="outer_circle"><span class="inner_circle"></span> </span>상품평순</label>
                        <input type="radio" name="sort" id="sort_new" value="new" ${sc.sort=="new"?"checked":""}>
                        <label for="sort_new"><span class="outer_circle"><span class="inner_circle"></span> </span>신상품순</label>
                        <input type="radio" name="sort" id="sort_low" value="low" ${sc.sort=="low"?"checked":""}>
                        <label for="sort_low"><span class="outer_circle"><span class="inner_circle"></span> </span>낮은가격순</label>
                        <input type="radio" name="sort" id="sort_high" value="high" ${sc.sort=="high"?"checked":""}>
                        <label for="sort_high"><span class="outer_circle"><span class="inner_circle"></span> </span>높은가격순</label>
                        <div class="btn_line"><button onclick="doSort()">적용</button></div>
                    </section>
                </div>
            </div>


                    <div class="cate_box">
                        <div class="cate_major">
                            <div class="major_title">CATEGORY</div>
                            <div class="major_selector">
                                <a href='./search.do?search=${sc.search}&sort=${sc.sort}&pageSize=${ph.pageSize}' class='major ${sc.category==null?"major_checked":""}'>전체(${totalAmount})</a>
                                <c:forEach var="cate" items="${cate}">
                                    <c:set var="cno" value="${cate.category_code_number}"/>
                                <a href='./search.do?search=${sc.search}&category=${cno}&sort=${sc.sort}&pageSize=${ph.pageSize}' class='major ${sc.category==cno?"major_checked":""}' >${cate.category_code_name}(${cate.category_amount})
                                </a>
                                </c:forEach>
                            </div>
<%--                            <div class="btn_expand">∨</div>--%>
                        </div>
                        <div class="size_box ${sc.category==null?"opt_hidden":""}">
                            <div class="size_title">SIZE</div>
                            <div class="size_selector">
                                <a href='./search.do?search=${sc.search}&category=${sc.category}&sort=${sc.sort}&pageSize=${ph.pageSize}${sc.color==null?"":"&color="}${sc.color}' class="size ${sc.size==null?"size_checked":""}">전체</a>
                                <c:if test="${!empty sc.category}">
                                    <c:forEach var="size" items="${cateSize}">
                                        <c:set var="sno" value="${size.size_code_number}"/>
                                        <a href="./search.do?search=${sc.search}&category=${sc.category}&sort=${sc.sort}&pageSize=${ph.pageSize}&size=${sno}${sc.color==null?"":"&color="}${sc.color}" class="size ${sc.size==sno?"size_checked":""}" >${size.size_code_name}(${size.size_amount})</a>
                                    </c:forEach>
                                </c:if>
                            </div>
                        </div>
                        <div class="color_box ${sc.category==null?"opt_hidden":""}">
                            <div class="color_title">COLOR</div>
                            <div class="color_selector">
                                <a href='./search.do?search=${sc.search}&category=${sc.category}&sort=${sc.sort}&pageSize=${ph.pageSize}${sc.size==null?"":"&size="}${sc.size}' class='color ${sc.color==null?"color_checked":""}'>전체</a>
<%--                                <c:if test="${!empty sc.category}">--%>
                                    <c:forEach var="color" items="${cateColor}">
                                        <c:set var="colorNo" value="${color.color_code_number}"/>
                                        <a href="./search.do?search=${sc.search}&category=${sc.category}&sort=${sc.sort}&pageSize=${ph.pageSize}${sc.size==null?"":"&size="}${sc.size}&color=${colorNo}" class="color ${sc.color==colorNo?"color_checked":""}">${color.color_code_name}(${color.color_amount})</a>
                                    </c:forEach>
<%--                                </c:if>--%>
                            </div>
                        </div>
                        <div class="price_box">
                            <div class="price_title">PRICE</div>
                            <div class="price_bounds">
                                <input type="number" name="min_price" id="minPrice" class="input_price" placeholder="최소가격" onkeydown="priceEnter()">
                                -
                                <input type="number" name="max_price" id="maxPrice" class="input_price" placeholder="최대가격" onkeydown="priceEnter()">
                                <span class="won">원</span>
                                <div class="btn_box">
                                    <button id="btn_price_src" class="btn_price" onclick="priceSubmit()">검색</button>
                                    <button id="btn_price_reset" class="btn_price" onclick="priceReset()">리셋</button>
                                </div>
                                <span id="alert_msg"></span>
                            </div>
                        </div>
                    </div>

                    <div class="product_container">
                        <div class="sort_opt">
                            <div class="sort_li">
                                <button class="${sc.sort.equals('popular')?"sort_checked":""}" onclick="getSearch(1, ${ph.pageSize}, 'popular')" data-sort="popular">인기상품순</button>
                                <button class="${sc.sort.equals('rate')?"sort_checked":""}" onclick="getSearch(1, ${ph.pageSize}, 'rate')" data-sort="rate">상품평순</button>
                                <button class="${sc.sort.equals('new')?"sort_checked":""}" onclick="getSearch(1, ${ph.pageSize}, 'new')" data-sort="new">신상품순</button>
                                <button class="${sc.sort.equals('low')?"sort_checked":""}" onclick="getSearch(1, ${ph.pageSize}, 'low')" data-sort="low">낮은가격순</button>
                                <button class="${sc.sort.equals('high')?"sort_checked":""}" onclick="getSearch(1, ${ph.pageSize}, 'high')" data-sort="high">높은가격순</button>
                            </div>

<%--                            <c:if test="${ph.totalCount > 20}">--%>
                            <select name="page_size" id="page_size" onchange="pageSizeChange()">
                                <option value="20" ${ph.pageSize==20?"selected":""}>20개씩 보기</option>
                                <option value="40" ${ph.pageSize==40?"selected":""}>40개씩 보기</option>
                                <option value="60" ${ph.pageSize==60?"selected":""}>60개씩 보기</option>
                            </select>
<%--                            </c:if>--%>
                        </div>
            <c:choose>
                <c:when test="${!empty list}">
                        <div class="product_box">
                            <ul class="product_li">
                                <c:forEach var="prd" items="${list}">
                                    <li class="product">
                                        <img data-prd="${prd.product_number}" src="${prd.image_path}" class="product_img" onclick="getProduct(this)" alt="상품이미지">
                                        <div class="desc_box">
                                            <div class="product_name">${prd.product_content}</div>
                                            <c:if test="${!empty prd.discount_rate}">
                                                <div class="product_price" style="text-decoration-line: line-through; font-size: 14px; font-weight: normal">￦<fmt:formatNumber value="${prd.product_price}" pattern="#,###" /></div>
                                                <div class="product_price">￦<fmt:formatNumber value="${prd.product_price - prd.product_price * (prd.discount_rate / 100)}" pattern="#,###" /></div>
                                            </c:if>
                                            <c:if test="${empty prd.discount_rate}">
                                                <div class="product_price">￦<fmt:formatNumber value="${prd.product_price}" pattern="#,###" /></div>
                                            </c:if>
                                            <div class="estim_box">
                                                <div class="score">${prd.review_rank==null?"0":prd.review_rank}</div>
                                                <div class="review_count">${prd.review_count==null?"0":prd.review_count}</div>
                                            </div>
                                        </div>
                                        <c:if test="${!empty prd.discount_rate}">
                                            <p class="dc_rate">${prd.discount_rate}%</p>
                                        </c:if>
                                        <div class="wish_mark <c:forEach var="wish" items="${wishList}">${wish.product_number==prd.product_number?"added_wishlist":""}</c:forEach>" onclick="wishlist(this)"></div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>

                        <div class="pagination">
                            <c:if test="${ph.showFirst}">
                                <div onclick="getSearch(1, ${ph.pageSize}, '${sc.sort}')" class="pp">최초페이지</div>
                            </c:if>
                            <c:if test="${ph.showPrev}">
                                <div onclick="getSearch(${ph.beginPage-1}, ${ph.pageSize}, '${sc.sort}')" class="pre">이전페이지</div>
                            </c:if>
                            <c:forEach var="i" begin="${ph.beginPage}" end="${ph.endPage}">
                                <div onclick="getSearch(${i}, ${ph.pageSize}, '${sc.sort}')" class="pnum ${i==ph.page?"on":""}">${i}</div>
                            </c:forEach>
                            <c:if test="${ph.showNext}">
                                <div onclick="getSearch(${ph.endPage+1}, ${ph.pageSize}, '${sc.sort}')" class="next">다음페이지</div>
                            </c:if>
                            <c:if test="${ph.showLast}">
                                <div onclick="getSearch(${ph.totalPage}, ${ph.pageSize}, '${sc.sort}')" class="nn">마지막페이지</div>
                            </c:if>
                        </div>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="product_box">
                        <h1 style="text-align: center" id="no_result">검색 결과가 없습니다.</h1>
                    </div>
                </c:otherwise>
            </c:choose>

        </div>
    </main>
    <div class="btn_top">
        <a href="#wrap" id="moveTop">TOP</a>
    </div>
    <footer class="footer"></footer>
</div>
<script>
    function getSearch(page, pageSize, sort){
        location.href ='/search.do?search=${sc.search}&page='+page+'&pageSize='+pageSize+'&sort='+sort+'${sc.category==null?"":"&category="}${sc.category}${sc.size==null?"":"&size="}${sc.size}${sc.color==null?"":"&color="}${sc.color}${sc.minPrice==null?"":"&minPrice="}${sc.minPrice}${sc.maxPrice==null?"":"&maxPrice="}${sc.maxPrice}';
    }
    function priceSubmit() {
        var minPrice = $('#minPrice').val()==null?null:$('#minPrice').val();
        var maxPrice = $('#maxPrice').val()==null?null:$('#maxPrice').val();
        if(minPrice==""&&maxPrice==""){return;}
        if(maxPrice!=""&&minPrice!=""){
            if(minPrice>maxPrice){
                $('#alert_msg').text("최소/최대 가격을 알맞게 입력해주세요.");
                $('#minPrice').val("");
                $('#maxPrice').val("");
                return;
            }
        }
        let minPriceUrl = minPrice==null||minPrice==""?"":"&minPrice="+minPrice;
        let maxPriceUrl = maxPrice==null||maxPrice==""?"":"&maxPrice="+maxPrice;

        location.href = '/search.do?search=${sc.search}${sc.category==null?"":"&category="}${sc.category}&sort=${sc.sort}&pageSize=${ph.pageSize}${sc.size==null?"":"&size="}${sc.size}${sc.color==null?"":"&color="}${sc.color}'+minPriceUrl+maxPriceUrl;
    }

    function priceEnter(){
        if(window.event.keyCode == 13){
            window.event.preventDefault();
            $("#btn_price_src").trigger('click');
        }
    };

    function priceReset(){
        <c:if test="${not empty sc.minPrice or not empty sc.maxPrice}">
        location.href = '/search.do?search=${sc.search}${sc.category==null?"":"&category="}${sc.category}&sort=${sc.sort}&pageSize=${ph.pageSize}${sc.size==null?"":"&size="}${sc.size}${sc.color==null?"":"&color="}${sc.color}';
        </c:if>
    };

    function pageSizeChange(){
        switch (Number($('#page_size').val())){
            case 20 :
                getSearch(1, 20, '${sc.sort}');
                break;
            case 40:
                getSearch(1, 40, '${sc.sort}');
                break;
            case 60 :
                getSearch(1, 60, '${sc.sort}');
                break;
            default :
                getSearch(1, 20, '${sc.sort}');
                break;
        }
    }

    $('.modal_close').on("click", function (){
        modal_popup.close(this);
    });

    function wishlist(el){
        if(${empty pageContext.request.getSession(false).getAttribute('member_id')}){
            modal_popup.confirm('로그인이 필요한 기능입니다.<br> 로그인하시겠습니까?', function (){
                var d = new Date();
                d.setTime(d.getTime() + (10*1000*60));
                document.cookie = "toURL="+location.href+"; expires="+d.toUTCString();

                location.href = "/login/login";
            })
            return;
        }
        let wishNum = $(el).parent().children('.product_img').data("prd");
        if($(el).hasClass('added_wishlist')) {
            $(el).removeClass('added_wishlist');

            let wishProduct = {};
            wishProduct["product_number"] = wishNum;
            $.ajax({
                url: "/removeWish.do",
                type: "POST",
                data: JSON.stringify(wishProduct),
                dataType: "json",
                contentType: "application/json",
                success: function (data) {
                    if(data){
                        console.log("성공")
                    }else{
                        console.log("전송값없음")
                    }
                },
                error: function (){
                    console.log("에러");
                }
            });
        }
        else {
            $(el).addClass('added_wishlist');
            let wishProduct = {};
            wishProduct["product_number"] = wishNum;
            $.ajax({
                url: "/addWish.do",
                type: "POST",
                data: JSON.stringify({
                    "product_number":wishNum
                }),
                dataType: "json",
                contentType: "application/json",
                success: function (data) {
                    if(data){
                        console.log("성공")
                    }else{
                        console.log("전송값없음")
                    }
                },
                error: function (){
                    console.log("에러");
                }
            });
        }
    }

    // window.onpageshow = function (event){
    //     if(event.persisted || (window.performance && window.performance.navigation.type == 2)){
    //         location.reload();
    //     }
    // }
    window.onbeforeunload = function (){
        $('#load').show();
    }

    window.onpageshow = function (){
        $('#main').load(location.href + ' #main');
        $('#load').hide();
    }

    $(window).load(function (){
        $('#load').hide();
    });

    $(document).ready(function (){
        let offset = $('#main').offset();
        $(window).scrollTop(offset.top);
    })


</script>
</body>
</html>
