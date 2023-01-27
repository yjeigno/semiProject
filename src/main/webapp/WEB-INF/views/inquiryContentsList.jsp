<%--
  Created by IntelliJ IDEA.
  User: 고예진
  Date: 2022-12-08
  Time: 오후 6:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="logInOutLink" value="${sessionScope.member_id==null?'/login/login':'/login/logout' }"/>
<c:set var="logInOutTxt" value="${sessionScope.member_id==null?'LOGIN':'LOGOUT'}"/>
<c:set var="memberId" value="${sessionScope.member_id==null?'':sessionScope.member_id}" />

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="<c:url value='/css/common.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/header.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/myPage.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/inquiry_contents_list.css'/> ">
    <script src="<c:url value='https://code.jquery.com/jquery-1.12.4.js'/> "></script>
    <script src="<c:url value='/js/header.js'/> "></script>
    <script src="<c:url value='/js/inquiryContentsList.js'/> "></script>
</head>
<body>
<div id="wrap">
    <jsp:include page="header.jsp" />

    <div class="main">
        <div class="contents_area">
            <div class="mypage_container">
                <div id="my_page_container">
                    <div class="mp_title">
                        <h1>문의내역</h1>
                    </div>
                    <form name="search_form" id="searchForm" action="#">
                        <div class="n_search_filter">
                            <div class="n_radio_tab">
                                <input type="radio" id="radioTab0" name="radioTab">
                                <label for="radioTab0">1주일</label>
                                <input type="radio" id="radioTab1" name="radioTab">
                                <label for="radioTab1">1개월</label>
                                <input type="radio" id="radioTab2" name="radioTab">
                                <label for="radioTab2">3개월</label>
                                <input type="radio" id="radioTab3" name="radioTab">
                                <label for="radioTab3">전체</label>
                            </div>

                            <div class="calendar_reference">
                                <div><input type="date" class="cal" name="cal_since" id="since"></div>
                                <div><span>~</span></div>
                                <div><input type="date" class="cal" name="cal_until" id="until"></div>
                                <button class="btn_confirm">조회</button>
                            </div>
                        </div>
                    </form>

                    <table class="in_table table_col">
                        <colgroup>
                            <col style="width:17%">
                            <col style="width:17%">
                            <col style="width:32%">
                            <col style="width:17%">
                            <col style="width:17%">
                        </colgroup>
                        <thead>
                        <tr class="in_tit">
                            <th scope="col">문의 유형</th>
                            <th scope="col">제목</th>
                            <th scope="col">내용</th>
                            <th scope="col">작성일</th>
                            <th scope="col">처리 상태</th>
                        </tr>
                        </thead>

                        <tbody>
                            <c:forEach var="li" items="${list}" varStatus="status">
                            <tr>
                                <td>
                                    <c:if test = "${li.qna_category eq 1}">상품</c:if>
                                    <c:if test = "${li.qna_category eq 2}">결제</c:if>
                                    <c:if test = "${li.qna_category eq 3}">배송</c:if>
                                </td>
                                <td>
                                    <a href="/inquiryContents/detail?qna_number=${li.qna_number}">${li.qna_title}</a>
                                </td>
                                <td class="left">
                                    <a href="/inquiryContents/detail?qna_number=${li.qna_number}">${li.qna_content}</a>
                                </td>
                                <td><fmt:formatDate value="${li.qna_register_date}" pattern="yyyy-MM-dd"/></td>
                                <td><span class="state txt_info">${li.qna_answer_status}</span></td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                    <div class="in_bottom">
                        <div class="pagination">
                            <div class="pp">최초페이지</div>
                            <div class="pre">이전페이지</div>
                            <div class="pnum">1</div>
                            <div class="next">다음페이지</div>
                            <div class="nn">마지막페이지</div>
                        </div>

                        <div class="in_btn_o">
                            <a href="#" class="in_btn btn_accent" onclick="location.href='<c:url value="/inquiryContents/write"/>'">문의작성</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
