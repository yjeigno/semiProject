<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="userId" value="${pageContext.request.getSession(false).getAttribute('member_id')==null?'':pageContext.request.getSession(false).getAttribute('member_id')}" />
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
  <script src="<c:url value="../js/userInfo.js"><c:param name="dt" value="${nowDate}"/></c:url>"></script>
  <link rel="stylesheet" type="text/css" href="<c:url value="../css/myPage.css"><c:param name="dt" value="${nowDate}"/></c:url>"/>
  <link rel="stylesheet" type="text/css" href="<c:url value="../css/userInfo.css"><c:param name="dt" value="${nowDate}"/></c:url>"/>
</head>
<body>
<div id="wrap">
  <jsp:include page="header2ndFloor.jsp"/>
  <main class="main">
    <div class="contents_area">
      <div class="mypage_container">
        <div id="my_page_container">
          <div class="mp_title">
            <h1>내정보 확인/수정</h1>
          </div>
          <div class="contents_box">
            <table class="user_info">
              <tbody>
              <tr id="user_id">
                <th>아이디</th>
                <td><input type="text" name="id" id="id" disabled="disabled" value="${user.member_id}"></td>
              </tr>
              <tr id="user_pw">
                <th>비밀번호</th>
                <td>
                  <input type="password" name="password" id="password">
                  <div id="pwMsg"></div>
                </td>
              </tr>
              <tr id="user_pwchk">
                <th>비밀번호 확인</th>
                <td>
                  <input type="password" name="passwordChk" id="passwordChk">
                  <div id="pwcMsg"></div>
                </td>
              </tr>
              <tr id="user_name">
                <th>이름</th>
                <td><input type="text" name="name" id="name" disabled="disabled" value="${user.member_name}"></td>
              </tr>
              <tr id="user_birth">
                <th>생년월일</th>
                <td>
                  <div>
                    <c:set var="birth" value="${user.member_birth.toString()}"/>
                    <input type="text" name="year" id="year" disabled="disabled" value="${birth.substring(0, 4)}.">
                    <input type="text" name="month" id="month" disabled="disabled" value="${birth.substring(4,6)}.">
                    <input type="text" name="day" id="day" disabled="disabled" value="${birth.substring(6)}">
                  </div>
                </td>
              </tr>
              <tr id="user_Tel">
                <th>휴대폰</th>
                <td>
                  <div>
                    <c:set var="tel" value="${user.member_phone}"/>
                    <input type="number" name="tel1" id="tel1"  value="${tel.substring(0,3)}">
                    <span class="line"></span>
                    <input type="number" name="tel2" id="tel2"  value="${tel.length()==11?tel.substring(3,7):tel.substring(3,6)}">
                    <span class="line"></span>
                    <input type="number" name="tel3" id="tel3"  value="${tel.length()==11?tel.substring(7):tel.substring(6)}">
                  </div>
                  <button type="button" class="btn_user_info" id="change_phoneNumber">인증하기</button>
                </td>
              </tr>
              <tr id="user_email">
                <th>이메일</th>
                <td>
                  <div>
                    <input type="text" name="email1" id="email1" value="${user.member_email.split("@")[0]}">
                    @
                    <input type="text" name="email2" id="email2" value="${user.member_email.split("@")[1]}">
                  </div>
                </td>
              </tr>
              <tr id="user_address">
                <th rowspan="2">주소</th>
                <td>
                  <input type="text" name="address1" id="city" value="${user.member_address}">
                  <button type="button" class="btn_user_info" id="find_address">주소검색</button>
                </td>
              </tr>
              <tr id="user_address2">
                <td><input type="text" name="address2" id="address_detail"></td>
              </tr>
              <tr id="user_SMS">
                <th>SMS수신여부</th>
                <td>
                  <input type="checkbox" id="toggle" ${user.member_sms==1?"checked":""} hidden>
                  <label for="toggle" class="toggleSwitch">
                    <span class="toggleButton"></span>
                  </label>
                </td>
              </tr>
              </tbody>
            </table>
            <button id="btn_change_info">변경 확인</button>
          </div>
        </div>
      </div>
    </div>
  </main>

</div>
</body>
</html>
