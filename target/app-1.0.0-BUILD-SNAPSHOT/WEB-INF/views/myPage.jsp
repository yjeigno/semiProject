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
  <link rel="stylesheet" href="../css/header.css">
  <script src="../js/header.js"></script>
  <link rel="stylesheet" type="text/css" href="<c:url value="../css/mypage.css"><c:param name="dt" value="${nowDate}"/></c:url>"/>
</head>
<body>
<div id="wrap">
  <jsp:include page="header2ndFloor.jsp" />
<main class="main">
  <div class="contents_area">
    <div class="mypage_container">
      <div id="my_page_container">
        <div class="mp_title">
          <h1>MY PAGE</h1>
        </div>
        <ul class="mypage_list">
          <li class="mypage_section" id="user_info">
            <img src="../img/etc/user.png" class="section_logo">
            <h2 class="section_title">${userId} 님</h2>
            <p class="btn_moveSection">정보 수정</p>
          </li>
          <li class="mypage_section" id="adrs_book">
            <img src="../img/etc/address.png" class="section_logo">
            <h2 class="section_title">주소록 등록/삭제</h2>
            <p class="btn_moveSection">주소록 관리</p>
          </li>
          <li class="mypage_section" id="delivery">
            <img src="../img/etc/delivery.png" class="section_logo">
            <h2 class="section_title">주문/배송</h2>
            <p class="btn_moveSection">조회</p>
          </li>
          <li class="mypage_section" id="QnA">
            <img src="../img/etc/QnA.png" class="section_logo">
            <h2 class="section_title">최근 문의: <span>0</span>건</h2>
            <p class="btn_moveSection">문의하기</p>
          </li>
          <li class="mypage_section" id="withdraw">
            <img src="../img/etc/exclamation.png" class="section_logo">
            <h2 class="section_title">회원 탈퇴</h2>
            <p class="btn_moveSection">탈퇴하기</p>
          </li>
          <li class="mypage_section" id="social_linked">
            <img src="../img/etc/naverlogo.png" alt="naver" class="section_logo corp_logo">
            <img src="../img/etc/kakakologo.png" alt="kakao" class="section_logo corp_logo">
            <img src="../img/etc/googlelogo.jpg" alt="google" class="section_logo corp_logo">
            <p class="sns_log_desc">SNS 아이콘을 눌러 SNS 로그인을 연결하실 수 있습니다.</p>
          </li>
        </ul>
      </div>
    </div>
  </div>
</main>
</div>
<script>
  $(function(){
    $('#withdraw > .btn_moveSection').on('click', function (){
      location.href = "/mypage/withdraw";
    })
    $('#user_info > .btn_moveSection').on('click', function (){
      location.href = "mypage/userInfo";
    })
  })
</script>
</body>
</html>
