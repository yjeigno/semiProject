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
    <title>Hanssem</title>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <link rel="stylesheet" type="text/css" href="../css/common.css">
  <link rel="stylesheet" type="text/css" href="<c:url value="../css/myPage.css"><c:param name="dt" value="${nowDate}"/></c:url>"/>
  <link rel="stylesheet" type="text/css" href="<c:url value="../css/withdraw.css"><c:param name="dt" value="${nowDate}"/></c:url>"/>
</head>
<body>
<div id="wrap">
  <jsp:include page="header2ndFloor.jsp" />
  <main class="main">
    <div class="contents_area">
      <div class="mypage_container">
        <div id="my_page_container">
          <div class="mp_title">
            <h1>회원 탈퇴</h1>
          </div>
          <div class="contents_box">
            <p class="notice">
              정말 회원에서 탈퇴하시겠습니까?<br>
              회원 탈퇴를 원하시면 비밀번호를 기입 후<br>
              탈퇴 버튼을 클릭해주세요
            </p>
            <form id="withdrawForm">
            <input type="password" name="member_pw" id="pw" placeholder="비밀번호를 기입해 주세요.">
            <div class="btn_box">
              <div class="btn btn_cancel">취소</div>
              <div class="btn btn_confirm">탈퇴</div>
            </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </main>
</div>
<script>
  $('.btn_cancel').on('click', function (){
    history.back();
  })
  $('.btn_confirm').on('click', function (){
    if(confirm("확인을 누르시면 탈퇴가 진행됩니다. 정말 탈퇴하시겠습니까?")){
      $('#withdrawForm').attr("method", "POST");
      $('#withdrawForm').attr("action", "/mypage/withdraw");
      $('#withdrawForm').submit();
    } else {
      history.back();
    }
  })
  $("#pw").on('keydown', function (){
    if(window.event.keyCode == 13){
      event.preventDefault();
      $(".btn_confirm").trigger('click');
    }
  })
</script>
</body>
</html>
