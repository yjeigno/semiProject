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
    <script src="./js/header.js"></script>
    <link rel="stylesheet" href="./css/common.css">
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/search(WIP).css">
    
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
            <form action="/search" method="get"name="search">
              <input class="search_bar" type="text" name="search" placeholder="검색어를 입력해주세요." value="${param.search}">
              <input class="search_btn" type="button" value="검색">
            </form>
          </div>
          <!-- 로고 클릭시 메인페이지로 이동 -->
          <a href="#"><div class="logo"><img src="img/headerImg/logo_black.png" alt=""></div></a>
        </div>
    
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
                  <li class="ca_img"><img src="img/headerImg/Furn1.png"></li>
                </ul>
                <ul class="ca_box" onclick="location.href='#';">
                  <li class="ca_txt">Table & Dining</li>
                  <li class="ca_img"><img src="img/headerImg/Furn2.png"></li>
                </ul>
                <ul class="ca_box" onclick="location.href='#';">
                  <li class="ca_txt">Chair</li>
                  <li class="ca_img"><img src="img/headerImg/Furn3.png"></li>
                </ul>
                <ul class="ca_box" onclick="location.href='#';">
                  <li class="ca_txt">Sofa</li>
                  <li class="ca_img"><img src="img/headerImg/Furn4.png"></li>
                </ul>
                <ul class="ca_box" onclick="location.href='#';">
                  <li class="ca_txt">Desk</li>
                  <li class="ca_img"><img src="img/headerImg/Furn5.png"></li>
                </ul>
                <ul class="ca_box" onclick="location.href='#';">
                  <li class="ca_txt">TV Stand & Storage</li>
                  <li class="ca_img"><img src="img/headerImg/Furn6.png"></li>
                </ul>
                <ul class="ca_box" onclick="location.href='#';">
                  <li class="ca_txt">Small Furniture</li>
                  <li class="ca_img"><img src="img/headerImg/Furn7.png"></li>
                </ul>
                <ul class="ca_box" onclick="location.href='#';">
                  <li class="ca_txt">Bed</li>
                  <li class="ca_img"><img src="img/headerImg/Furn8.png"></li>
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
                                <span class="major major_checked">전체</span>
                                <c:forEach var="categoryDto" items="${cate}">
                            <span data-ccn='${categoryDto.category_code_number}' class="major">${categoryDto.category_code_name}
                            </span>
                                </c:forEach>
                            </div>
                            <div class="btn_expand">∨</div>
                        </div>
                        <div class="cate_subclass opt_hidden">
                            <div class="subclass_title">SIZE</div>
                            <div class="sub_selector">
                                <span class="subclass subclass_checked">전체</span>
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
                            <ul class="sort_li">
                                <li data-chk="popular" id="sort_popular" class="sort_checked">인기상품순</li>
                                <li data-chk="rate" id="sort_review">상품평순</li>
                                <li data-chk="new" id="sort_new">신상품순</li>
                                <li data-chk="low" id="sort_low">낮은가격순</li>
                                <li data-chk="high" id="sort_high">높은가격순</li>
                            </ul>
                            <c:if test="${ph.totalCount > 20}">
                                <select name="page_size" id="page_size">
                                    <option value="20">20개씩 보기</option>
                                    <option value="40" selected>40개씩 보기</option>
                                    <option value="60">60개씩 보기</option>
                                </select>
                            </c:if>
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
                                                <div class="score">${searchResult.review_rank}</div>
                                                <div class="review_count">${searchResult.review_count}</div>
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
                                <a href="<c:url value='/search?search=${sc.search}' />" class="pp">최초페이지</a>
                            </c:if>
                            <c:if test="${ph.showPrev}">
                                <a href="<c:url value='/search?search=${ph.search}&page=${ph.beginPage-1}&pageSize=${ph.pageSize}' />" class="pre">이전페이지</a>
                            </c:if>
                            <c:forEach var="i" begin="${ph.beginPage}" end="${ph.endPage}">
                                <a href="<c:url value='/search?search=${ph.search}&page=${i}&pageSize=${ph.pageSize}' />" class="pnum ${i==ph.page?"on":""}">${i}</a>
                            </c:forEach>
                            <c:if test="${ph.showNext}">
                                <a href="<c:url value='/search?search=${ph.search}&page=${ph.endPage+1}&pageSize=${ph.pageSize}' />" class="next">다음페이지</a>
                            </c:if>
                            <c:if test="${ph.showLast}">
                                <a href="<c:url value='/search?search=${ph.search}&page=${ph.endPage}&pageSize=${ph.pageSize}' />" class="nn">마지막페이지</a>
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
</div>
</body>
</html>
