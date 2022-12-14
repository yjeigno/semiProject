<%--
  Created by IntelliJ IDEA.
  User: 고예진
  Date: 2022-12-08
  Time: 오후 6:35
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
    <title>Hanssem</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="<c:url value='/css/common.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/header.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/myPage.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/inquiry_contents.css'/> ">
    <script src="<c:url value='https://code.jquery.com/jquery-1.12.4.js'/> "></script>
    <script src="<c:url value='/js/header.js'/> "></script>
    <script src="<c:url value='/js/inquiryContents.js'/> "></script>
</head>
<body>
<div id="wrap">
    <jsp:include page="header.jsp" />


    <div class="main">
        <form method="post" action="${mode=="write"?"/inquiryContents/write":mode=="update"?"/inquiryContents/update":""}" class="frm" onsubmit="event.preventDefault(); inquireContentsSubmit(this)">
            <input type="hidden" name="qna_number"
               value="<c:if test="${mode eq 'update'}">${inquiryDto.qna_number}</c:if>"
            >
            <div class="content_area">
                <div class="mypage_container">
                    <div id="my_page_container">
                        <div class="mp_title">
                            <h1>문의작성 ${mode=="write"?"쓰기":mode=="detail"?"읽기":"수정"}</h1>
                        </div>
                        <div class="n_container">
                            <div class="inquiry_type">
                                <ul class="inquiry_type_list">
                                    <li class="inquiry_type_item">
                                        <input type="radio" id="inquiryType_1" name="qna_category" class="inquiry_type_item_radio" value="1">
                                        <label for="inquiryType_1" class="inquiry_type_item_text">상품</label>
                                    </li>
                                    <li class="inquiry_type_item">
                                        <input type="radio" id="inquiryType_2" name="qna_category" class="inquiry_type_item_radio" value="2">
                                        <label for="inquiryType_2" class="inquiry_type_item_text">주문/결제</label>
                                    </li>
                                    <li class="inquiry_type_item">
                                        <input type="radio" id="inquiryType_3" name="qna_category" class="inquiry_type_item_radio" value="3">
                                        <label for="inquiryType_3" class="inquiry_type_item_text">배송</label>
                                    </li>
                                </ul>
                            </div>

                            <table class="n_table table_row">
                                <tbody>
                                <tr>
                                    <th scope="row">작성자</th>
                                    <td>
                                        <input type="text" name="ord_no" class="n_input" value="${memberDto.member_name}" disabled>
                                    </td>
                                </tr>
                                <tr class="n_same_row">
                                    <th scope="row">휴대전화</th>
                                    <td>
                                        <input type="text" name="ord_no" class="n_input" value="${memberDto.member_phone}" disabled>
                                    </td>
                                </tr>
                                <tr class="n_same_row">
                                    <th scope="row">이메일</th>
                                    <td>
                                        <input type="text" name="ord_no" class="n_input" value="${memberDto.member_email}" disabled>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">제목</th>
                                    <td>
                                        <input name="qna_title" type="text" class="n_input" id="n_title" placeholder="제목을 입력해 주세요."
                                           value="<c:if test="${mode ne 'write'}">${inquiryDto.qna_title}</c:if>"
                                           <c:if test="${mode eq 'detail'}">readonly</c:if>
                                        >
                                    </td>
                                </tr>
                                <tr class="n_same_row">
                                    <th scope="row">문의내용</th>
                                    <td>
                                        <textarea name="qna_content" class="n_input" id="n_text" cols="100" rows="100" placeholder="내용을 입력해 주세요."
                                            <c:if test="${mode eq 'detail'}">readonly</c:if>
                                        ><c:if test="${mode ne 'write'}">${inquiryDto.qna_content}</c:if></textarea>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="n_btn_group">
                            <a href="/inquiryContents/list" class="n_btn n_btn_cancel">취소</a>
                            <c:if test="${mode eq 'detail'}">
                                <a href="/inquiryContents/update?qna_number=${inquiryDto.qna_number}" class="n_btn n_btn_modify">수정 페이지로 이동</a>
                            </c:if>
                            <c:if test="${mode eq 'write'}">
                                <button class="n_btn n_btn_accent">등록하기</button>
                            </c:if>
                            <c:if test="${mode eq 'update'}">
                                <button class="n_btn n_btn_accent" onclick="this.form.action = '/inquiryContents/update'">수정하기</button>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
