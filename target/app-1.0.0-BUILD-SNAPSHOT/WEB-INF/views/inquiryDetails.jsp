<%--
  Created by IntelliJ IDEA.
  User: 고예진
  Date: 2022-12-08
  Time: 오후 6:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="<c:url value='/css/common.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/header.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/inquiry_details.css'/> ">
    <script src="<c:url value='https://code.jquery.com/jquery-1.12.4.js'/> "></script>
    <script src="<c:url value='/js/header.js'/> "></script>
    <script src="<c:url value='/js/inquiryDetails.js'/> "></script>
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
                            <col style="width:32%">
                            <col style="width:17%">
                            <col style="width:17%">
                            <col style="width:17%">
                        </colgroup>
                        <thead>
                        <tr class="in_tit">
                            <th scope="col">문의 유형</th>
                            <th scope="col">제목</th>
                            <th scope="col">주문번호</th>
                            <th scope="col">작성일</th>
                            <th scope="col">처리 상태</th>
                        </tr>
                        </thead>

                        <tbody>
                        <tr>
                            <td>배송</td>
                            <td class="left">
                                <a href="#">언제 배송되는지 궁금합니다.</a>
                            </td>
                            <td>2022120711234</td>
                            <td>2022-12-07</td>
                            <td><span class="state txt_info">답변 완료</span></td>
                        </tr>
                        <tr>
                            <td>배송</td>
                            <td class="left">
                                <a href="#">언제 배송되는지 궁금합니다.</a>
                            </td>
                            <td>2022120711234</td>
                            <td>2022-12-07</td>
                            <td><span class="state txt_info">답변 완료</span></td>
                        </tr>
                        <tr>
                            <td>배송</td>
                            <td class="left">
                                <a href="#">언제 배송되는지 궁금합니다.</a>
                            </td>
                            <td>2022120711234</td>
                            <td>2022-12-07</td>
                            <td><span class="state txt_info">답변 완료</span></td>
                        </tr>
                        <tr>
                            <td>배송</td>
                            <td class="left">
                                <a href="#">언제 배송되는지 궁금합니다.</a>
                            </td>
                            <td>2022120711234</td>
                            <td>2022-12-07</td>
                            <td><span class="state txt_info">답변 완료</span></td>
                        </tr>
                        <tr>
                            <td>배송</td>
                            <td class="left">
                                <a href="#">언제 배송되는지 궁금합니다.</a>
                            </td>
                            <td>2022120711234</td>
                            <td>2022-12-07</td>
                            <td><span class="state txt_info">답변 완료</span></td>
                        </tr>
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
                            <a href="#" class="in_btn btn_accent">문의작성</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
