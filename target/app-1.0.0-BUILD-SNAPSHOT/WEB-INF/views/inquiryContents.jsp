<%--
  Created by IntelliJ IDEA.
  User: 고예진
  Date: 2022-12-08
  Time: 오후 6:35
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
    <link rel="stylesheet" href="<c:url value='/css/inquiry_contents.css'/> ">
    <script src="<c:url value='https://code.jquery.com/jquery-1.12.4.js'/> "></script>
    <script src="<c:url value='/js/header.js'/> "></script>
    <script src="<c:url value='/js/inquiryContents.js'/> "></script>
</head>
<body>
<div id="wrap">
    <jsp:include page="header.jsp" />

    <div class="main">
        <form action="#" class="frm">
            <div class="content_area">
                <div class="mypage_container">
                    <div id="my_page_container">
                        <div class="mp_title">
                            <h1>문의작성</h1>
                        </div>
                        <div class="n_container">
                            <div class="inquiry_type">
                                <ul class="inquiry_type_list">
                                    <li class="inquiry_type_item">
                                        <input type="radio" id="inquiryType_1" name="qna_type" class="inquiry_type_item_radio" value="1">
                                        <label for="inquiryType_1" class="inquiry_type_item_text">상품</label>
                                    </li>
                                    <li class="inquiry_type_item">
                                        <input type="radio" id="inquiryType_2" name="qna_type" class="inquiry_type_item_radio" value="2">
                                        <label for="inquiryType_2" class="inquiry_type_item_text">교환/반품</label>
                                    </li>
                                    <li class="inquiry_type_item">
                                        <input type="radio" id="inquiryType_3" name="qna_type" class="inquiry_type_item_radio" value="3">
                                        <label for="inquiryType_3" class="inquiry_type_item_text">배송</label>
                                    </li>
                                    <li class="inquiry_type_item">
                                        <input type="radio" id="inquiryType_4" name="qna_type" class="inquiry_type_item_radio" value="4">
                                        <label for="inquiryType_4" class="inquiry_type_item_text">주문/결제</label>
                                    </li>
                                </ul>
                            </div>

                            <table class="n_table table_row">
                                <tbody>
                                <tr>
                                    <th scope="row">주문번호</th>
                                    <td class="order_check">
                                        <input type="text" name="ord_no" class="n_input">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">작성자</th>
                                    <td>
                                        <input type="text" name="ord_no" class="n_input">
                                    </td>
                                </tr>
                                <tr class="n_same_row">
                                    <th scope="row">휴대전화</th>
                                    <td>
                                        <input type="text" name="ord_no" class="n_input">
                                    </td>
                                </tr>
                                <tr class="n_same_row">
                                    <th scope="row">이메일</th>
                                    <td>
                                        <input type="text" name="ord_no" class="n_input">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">제목</th>
                                    <td>
                                        <input type="text" class="n_input" id="n_title" placeholder="제목을 입력해 주세요.">
                                    </td>
                                </tr>
                                <tr class="n_same_row">
                                    <th scope="row">문의내용</th>
                                    <td>
                                        <textarea name="qa_msg" class="n_input" id="n_text" cols="100" rows="100" placeholder="내용을 입력해 주세요."></textarea>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="n_btn_group">
                            <a href="#" class="n_btn n_btn_cancel">취소</a>
                            <a href="#" class="n_btn n_btn_accent">작성하기</a>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
