<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="userId" value="${pageContext.request.getSession(false).getAttribute('id')==null?'':pageContext.request.getSession(false).getAttribute('id')}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script defer src="./js/search(WIP).js"></script>
    <link rel="stylesheet" href="./css/common.css">
    <link rel="stylesheet" href="./css/search(WIP).css">
    
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
                        <div class="cate_subclass opt_hidden">
                            <div class="subclass_title">SIZE</div>
                            <div class="sub_selector">
                                <a href="./search?search=${sc.search}&category=${sc.category}&sort=${sc.sort}&pageSize=${ph.pageSize}" class="subclass ${sc.size==null?"subclass_checked":""}">전체</a>
                                <c:if test="${!empty sc.category}">
                                    <c:forEach var="size" items="${cateSize}">
                                        <c:set var="sno" value="${size.size_code_number}"/>
                                        <a href="./search?search=${sc.search}&category=${sc.category}&sort=${sc.sort}&pageSize=${ph.pageSize}&size=${sno}" class="subclass ${sc.size==sno?"subclass_checked":""}" >${size.size_code_name}</a>
                                    </c:forEach>
                                </c:if>
                            </div>
                        </div>
                        <div class="opt_box opt_hidden">
                            <div class="opt_title">COLOR</div>
                            <div class="opt_selector">
                                <p class="cate_opt opt_checked">전체</p>
                            </div>
                        </div>
                        <div class="price_box">
                            <div class="price_title">PRICE</div>
                            <div class="price_bounds">
                                <input type="number" name="min_price" id="minPrice" class="input_price" placeholder="최소가격">
                                -
                                <input type="number" name="max_price" id="maxPrice" class="input_price" placeholder="최대가격">
                                <span class="won">원</span>
                                <button class="btn_price_src">검색</button>
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
                            <script>
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
                            </script>
                        </div>
                        <div class="product_box">
                            <ul class="product_li">
                                <c:forEach var="searchResult" items="${list}">
                                    <li class="product">
                                        <img src="${searchResult.image_path}" class="product_img"/>
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
                                        <div class="wish_mark"></div>
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
            location.href ='/search?search=${sc.search}&page='+page+'&pageSize='+pageSize+'&sort='+sort+'${sc.category==null?"":"&category="}${sc.category}${sc.size==null?"":"&size="}${sc.size}${sc.color==null?"":"&color="}${sc.color}';
        }

        if(!$('.major_checked').text().includes("전체")){
            $(".cate_subclass").removeClass("opt_hidden");
            $(".opt_box").removeClass("opt_hidden");
        }
    </script>
</div>
</body>
</html>
