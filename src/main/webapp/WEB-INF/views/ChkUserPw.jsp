<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="userId" value="${pageContext.request.getSession(false).getAttribute('id')==null?'':pageContext.request.getSession(false).getAttribute('id')}" />
<jsp:useBean id="today" class="java.util.Date" />
<fmt:formatDate value="${today}" pattern="yyyyMMddHHmm" var="nowDate"/>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>

    <link rel="stylesheet" type="text/css" href="../css/common.css">
    <link rel="stylesheet" type="text/css" href="<c:url value="../css/mypage.css"><c:param name="dt" value="${nowDate}"/></c:url>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="../css/chkUserPwPage.css"><c:param name="dt" value="${nowDate}"/></c:url>"/>
</head>
<body>
<div id="wrap">
    <jsp:include page="header2ndFloor.jsp"/>
    <main class="main">
        <div class="contents_area">
            <div class="mypage_container">
                <div id="my_page_container">
                    <div class="contents_box">
                        <p class="notice">
                            비밀번호를 한번 더 입력해주세요<br><br>
                            회원님의 정보를 안전하게 보호하기 위해<br> 비밀번호를 한번 더 확인합니다.
                        </p>
                        <input type="password" name="member_pw" id="pw" placeholder="비밀번호를 입력해주세요.">
                        <div class="btn_confirm">비밀번호 확인</div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>
<script>
    $(function (){
        $('.btn_confirm').on('click', function (){
            let pw = $('#pw').val();
            let member = {
                "member_pw":pw
            };
            $.ajax({
                url:"/mypage/pwchecker",
                type:"POST",
                data:JSON.stringify(member),
                contentType:"application/json",

            })
        })
    })
</script>
</body>
</html>
