<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>로그인</title>
  <script src="<c:url value='https://code.jquery.com/jquery-1.12.4.js'/>"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
  <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
  <link rel="stylesheet" href="<c:url value='/css/login.css'/>">
  <%--  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>--%>
  <!-- <script defer src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> -->
  <link rel="stylesheet" href="<c:url value='/js/login.js'/>">


</head>
<body>
<div id="wrap">
  <jsp:include page="header.jsp" />



<div class="member_sec">
  <div class="tap_btn">
    <a href="login"><div class="m_btn_line tap_checked"><h2>Login</h2></div></a>
    <a href="<c:url value='/register'/>"><div class="m_btn_line"><h2>Join</h2></div></a>
  </div>


  <!-- //////////////////////////////////////////////////////// -->
  <!-- 로그인 탭 -->
  <div class="pan_box">
    <!-- 로그인 폼 -->
    <div class="login_pan">
      <div class="login_title">
        <div class="t1">
          <h1>HANSSEM</h1><h3>로그인</h3>
        </div>
        <div class="t2">한샘몰 회원으로 많은 혜택을 누리세요.</div>
      </div>

      <form action="<c:url value='/login/login'/>" method="post" id="login_form" onsubmit="return formCheck(this);">
        <div id="msg">
          <c:if test="${not empty param.msg}">
            <i class="fa fa-exclamation-circle"> ${URLDecoder.decode(param.msg)}</i>
          </c:if>
        </div>
        <!-- 아이디 입력 -->
        <div class="login_id">ID<input type="text" id="member_id" name="member_id" value="${ cookie.id.value }" placeholder="아이디를 입력하세요."></div>

        <!-- 비밀번호 입력 -->
        <div class="login_pw">PW<input type="password" id="member_pw" name="member_pw" placeholder="비밀번호를 입력하세요."></div>


        <div class="login_footer">
          <!-- 아이디 기억하기 -->

          <label for="rememberId">
            <input type="checkbox" id="rememberId" name="rememberId" ${empty cookie.id.value?"":"checked"}>
            <h5>아이디 기억하기</h5>
          </label>
          <!-- 아이디/비번 찾기 -->
          <span>
                <a href="#"> <h5>아이디 / 비밀번호 찾기</h5></a>
            </span>
        </div>
        <!-- 로그인 확인 아니면 아이디 또는 비밀번호가 틀립니다 -->
        <button type="submit" class="log_btn">로그인</button>
      </form>
    </div>

  </div>

</div>

</div>

<footer class="footer"></footer>


</body>
</html>