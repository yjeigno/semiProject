<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="userId" value="${pageContext.request.getSession(false).getAttribute('id')==null?'':pageContext.request.getSession(false).getAttribute('id')}" />
<jsp:useBean id="today" class="java.util.Date" />
<fmt:formatDate value="${today}" pattern="yyyyMMddHHmm" var="nowDate"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hanssem</title>
    <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
    <script defer src="<c:url value="./js/search.js"><c:param name="dt" value="${nowDate}"/></c:url>"></script>
    <link rel="stylesheet" type="text/css" href="./css/common.css">
    <link rel="stylesheet" type="text/css" href="<c:url value="./css/search.css"><c:param name="dt" value="${nowDate}"/></c:url>"/>
    
</head>
<body>
<div id="wrap">
    <jsp:include page="header.jsp" />

    <main id="main">
        <div class="container">
            <div class="src_title">
                <h1>${param.search}</h1>
                <span> 검색 결과</span>
            </div>
            <c:choose>
                <c:when test="${!empty list}">
                    <div class="cate_box">
                        <div class="cate_major">
                            <div class="major_title">CATEGORY</div>
                            <div class="major_selector">
                                <a href='./search?search=${sc.search}&sort=${sc.sort}&pageSize=${ph.pageSize}' class='major ${sc.category==null?"major_checked":""}'>전체(${totalAmount})</a>
                                <c:forEach var="cate" items="${cate}">
                                    <c:set var="cno" value="${cate.category_code_number}"/>
                                <a href='./search?search=${sc.search}&category=${cno}&sort=${sc.sort}&pageSize=${ph.pageSize}' class='major ${sc.category==cno?"major_checked":""}' >${cate.category_code_name}(${cate.category_amount})
                                </a>
                                </c:forEach>
                            </div>
                            <div class="btn_expand">∨</div>
                        </div>
                        <div class="cate_subclass ${sc.category==null?"opt_hidden":""}">
                            <div class="subclass_title">SIZE</div>
                            <div class="sub_selector">
                                <a href='./search?search=${sc.search}&category=${sc.category}&sort=${sc.sort}&pageSize=${ph.pageSize}${sc.color==null?"":"&color="}${sc.color}' class="subclass ${sc.size==null?"subclass_checked":""}">전체</a>
                                <c:if test="${!empty sc.category}">
                                    <c:forEach var="size" items="${cateSize}">
                                        <c:set var="sno" value="${size.size_code_number}"/>
                                        <a href="./search?search=${sc.search}&category=${sc.category}&sort=${sc.sort}&pageSize=${ph.pageSize}&size=${sno}${sc.color==null?"":"&color="}${sc.color}" class="subclass ${sc.size==sno?"subclass_checked":""}" >${size.size_code_name}(${size.size_amount})</a>
                                    </c:forEach>
                                </c:if>
                            </div>
                        </div>
                        <div class="opt_box ${sc.category==null?"opt_hidden":""}">
                            <div class="opt_title">COLOR</div>
                            <div class="opt_selector">
                                <a href='./search?search=${sc.search}&category=${sc.category}&sort=${sc.sort}&pageSize=${ph.pageSize}${sc.size==null?"":"&size="}${sc.size}' class='cate_opt ${sc.color==null?"opt_checked":""}'>전체</a>
                                <c:if test="${!empty sc.category}">
                                    <c:forEach var="color" items="${cateColor}">
                                        <c:set var="colorNo" value="${color.color_code_number}"/>
                                        <a href="./search?search=${sc.search}&category=${sc.category}&sort=${sc.sort}&pageSize=${ph.pageSize}${sc.size==null?"":"&size="}${sc.size}&color=${colorNo}" class="cate_opt ${sc.color==colorNo?"opt_checked":""}">${color.color_code_name}(${color.color_amount})</a>
                                    </c:forEach>
                                </c:if>
                            </div>
                        </div>
                        <div class="price_box">
                            <div class="price_title">PRICE</div>
                            <div class="price_bounds">
                                <input type="number" name="min_price" id="minPrice" class="input_price" placeholder="최소가격">
                                -
                                <input type="number" name="max_price" id="maxPrice" class="input_price" placeholder="최대가격">
                                <span class="won">원</span>
                                <div class="btn_box">
                                    <button id="btn_price_src" class="btn_price">검색</button>
                                    <button id="btn_price_reset" class="btn_price">리셋</button>
                                </div>
                                <span id="alert_msg"></span>
                            </div>
                        </div>
                    </div>

                    <div class="product_box">
                        <div class="sort_opt">
                            <div class="sort_li">
                                <button class="${sc.sort.equals('popular')?"sort_checked":""}" onclick="getSearch(1, ${ph.pageSize}, 'popular')" data-sort="popular">인기상품순</button>
                                <button class="${sc.sort.equals('rate')?"sort_checked":""}" onclick="getSearch(1, ${ph.pageSize}, 'rate')" data-sort="rate">상품평순</button>
                                <button class="${sc.sort.equals('new')?"sort_checked":""}" onclick="getSearch(1, ${ph.pageSize}, 'new')" data-sort="new">신상품순</button>
                                <button class="${sc.sort.equals('low')?"sort_checked":""}" onclick="getSearch(1, ${ph.pageSize}, 'low')" data-sort="low">낮은가격순</button>
                                <button class="${sc.sort.equals('high')?"sort_checked":""}" onclick="getSearch(1, ${ph.pageSize}, 'high')" data-sort="high">높은가격순</button>
                            </div>

<%--                            <c:if test="${ph.totalCount > 20}">--%>
                                <select name="page_size" id="page_size">
                                    <option value="20" ${ph.pageSize==20?"selected":""}>20개씩 보기</option>
                                    <option value="40" ${ph.pageSize==40?"selected":""}>40개씩 보기</option>
                                    <option value="60" ${ph.pageSize==60?"selected":""}>60개씩 보기</option>
                                </select>
<%--                            </c:if>--%>

                        </div>
                        <div class="product_box">
                            <ul class="product_li">
                                <c:forEach var="searchResult" items="${list}">
                                    <li class="product">
                                        <img data-prd="${searchResult.product_number}" src="${searchResult.image_path}" class="product_img" onclick="getProduct(this)"/>
                                        <div class="desc_box">
                                            <div class="product_name">${searchResult.product_name}</div>
                                            <c:if test="${!empty searchResult.discount_rate}">
                                                <div class="product_price" style="text-decoration-line: line-through; font-size: 14px; font-weight: normal">￦<fmt:formatNumber value="${searchResult.product_price}" pattern="#,###" /></div>
                                                <div class="product_price">￦<fmt:formatNumber value="${searchResult.product_price * (searchResult.discount_rate / 100)}" pattern="#,###" /></div>
                                            </c:if>
                                            <c:if test="${empty searchResult.discount_rate}">
                                                <div class="product_price">￦<fmt:formatNumber value="${searchResult.product_price}" pattern="#,###" /></div>
                                            </c:if>
                                            <div class="estim_box">
                                                <div class="score">${searchResult.review_rank==null?"0":searchResult.review_rank}</div>
                                                <div class="review_count">${searchResult.review_count==null?"0":searchResult.review_count}</div>
                                            </div>
                                        </div>
                                        <p class="dc_rate">${searchResult.discount_rate}%</p>
                                        <div class="wish_mark <c:forEach var="wish" items="${wishList}">${wish.product_number==searchResult.product_number?"added_wishlist":""}</c:forEach> "></div>
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
                    <h1 style="text-align: center">검색 결과가 없습니다.</h1>
                </c:otherwise>
            </c:choose>

        </div>
    </main>

    <footer class="footer"></footer>


    <script>
        function getSearch(page, pageSize, sort){
            location.href ='/search?search=${sc.search}&page='+page+'&pageSize='+pageSize+'&sort='+sort+'${sc.category==null?"":"&category="}${sc.category}${sc.size==null?"":"&size="}${sc.size}${sc.color==null?"":"&color="}${sc.color}${sc.minPrice==null?"":"&minPrice="}${sc.minPrice}${sc.maxPrice==null?"":"&maxPrice="}${sc.maxPrice}';
        }
        $('#btn_price_src').on('click', function (){
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

            location.href = '/search?search=${sc.search}${sc.category==null?"":"&category="}${sc.category}&sort=${sc.sort}&pageSize=${ph.pageSize}${sc.size==null?"":"&size="}${sc.size}${sc.color==null?"":"&color="}${sc.color}'+minPriceUrl+maxPriceUrl;
        })
        $('.input_price').on('keydown',function (){
            if(window.event.keyCode == 13){
                window.event.preventDefault();
                $("#btn_price_src").trigger('click');
            }
        })
        $('#btn_price_reset').on('click', function (){
            <c:if test="${not empty sc.minPrice or not empty sc.maxPrice}">
            location.href = '/search?search=${sc.search}${sc.category==null?"":"&category="}${sc.category}&sort=${sc.sort}&pageSize=${ph.pageSize}${sc.size==null?"":"&size="}${sc.size}${sc.color==null?"":"&color="}${sc.color}';
            </c:if>
        })
        $('#page_size').on('change', function() {
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
        })

        $(".wish_mark").on('click', function (){
            // if(sessionStorage.getItem("id")==null){
            //     if(confirm("로그인이 필요한 기능입니다. 로그인하시겠습니까?")){
            //         location.href = "/login_register";
            //     } else {
            //         return;
            //     }
            // }
            let wishNum = $(this).parent().children('.product_img').data("prd");
            if($(this).hasClass('added_wishlist')) {
                $(this).removeClass('added_wishlist');

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
                            alert("성공")
                        }else{
                            alert("전송값없음")
                        }
                    },
                    error: function (){
                        console.log("에러");
                    }
                })
            }
            else {
                $(this).addClass('added_wishlist');
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
                            alert("성공")
                        }else{
                            alert("전송값없음")
                        }
                    },
                    error: function (){
                        console.log("에러");
                    }
                })
            }
        })


    </script>
</div>
</body>
</html>
