<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022-11-30
  Time: 오후 11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<input type="radio" name="member_btn" id="login_btn" checked>
<input type="radio" name="member_btn" id="regi_btn">

<div class="member_sec">
  <div class="tap_btn">
    <label for="login_btn" class="m_btn_line"><h2>Login</h2></label>
    <label for="regi_btn" class="m_btn_line"><h2>Join</h2></label>
  </div>


  <!-- //////////////////////////////////////////////////////// -->
  <!-- 로그인 탭 -->
  <div class="pan_box">
    <!-- 로그인 폼 -->
    <div class="login_pan">
      <div class="login_title">
        <div class="t1">
          <h1>HANSAM</h1><h3>로그인</h3>
        </div>
        <div class="t2">한샘몰 회원가입을 통해 많은 혜택을 누리세요.</div>
      </div>

      <form action="#" method="POST" id="login_form">
        <!-- 아이디 입력 -->
        <div class="login_id">ID<input type="text" id="member_id" placeholder="아이디를 입력하세요."></div>
        <!-- 비밀번호 입력 -->
        <div class="login_pw">PW<input type="text" id="member_pw" placeholder="비밀번호를 입력하세요."></div>

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
        <button class="log_btn">로그인</button>
      </form>
    </div>

    <!-- ////////////////////회원가입 폼////////////////////// -->
    <div class="regi_pan">
      <div class="regi_title">
        <div class="t1">
          <h1>HANSAM</h1><h3>회원가입</h3>
        </div>
        <div class="t2">한샘몰 회원가입을 통해 많은 혜택을 누리세요.</div>
      </div>

      <form action="<c:url value='/register/add'/>" method="POST" id="regi_form" onsubmit="return formCheck(this)">

        <table class="regi_form_table">



          <tr class="regi_row_sec">
            <td class="regi_col1">아이디</td>
            <td class="regi_col2">
              <input type="text" name="regi_id" value="" minlength="6" maxlength="12">
              <input class='regi_id_chk' type="button" value="중복확인" onclick="">
              <br>
              <span class="min_txt">최소 6자 이상 최대 12자 이내로 입력 해주세요.</span>
              <!-- <div class="regi_msg" id="regi_msg">${URLDecoder.decode(param.msg, "utf-8")}</div> -->
            </td>
          </tr>

          <tr class="regi_row_sec">
            <td class="regi_col1">비밀번호</td>
            <td class="regi_col2">
              <input type="password" name="regi_pw" minlength="6" value="" maxlength="12">
              <br>
              <span class="min_txt">영문/숫자/특수기호를 포함해주세요.(6자~12자)</span>
            </td>
          </tr>

          <tr class="regi_row_sec">
            <td class="regi_col1">비밀번호 확인</td>
            <td class="regi_col2">
              <input type="password" name="regi_pwdCheck" value="" maxlength="16">
            </td>

          </tr>

          <tr class="regi_row_sec">
            <td class="regi_col1">이름</td>
            <td class="regi_col2"><input type="text" name="name" value="" maxlength="10"></td>
          </tr>


          <!-- ////////////성별 아직 체크 못함/////////////// -->
          <input type ="radio" name="regi_gender" id="regi_gender_male" checked/>
          <input type="radio" name="regi_gender" id="regi_gender_female"/>

          <tr class="regi_row_sec">
            <td class="regi_col1">생년월일 / 성별</td>
            <td class="regi_col2 ">
              <input type="text" name="birth" value="" maxlength="8">

              <label for="regi_gender_male" class="gender_m">남</label>
              <label for="regi_gender_female" class="gender_f">여</label>
              <!--///////////// 체크 아직못함//////////// -->
              <br>
              <span class="min_txt">생년월일 8자리 입력해주세요.</span>
            </td>

          </tr>















          <tr class="regi_row_sec">
            <td class="regi_col1">이메일</td>
            <td class="regi_col2">
              <input type="text" name="mailid">
              <span class="a">@</span>
              <input type="text" name="email">
              <select name="mailslc">
                <option value="self" selected>직접입력</option>
                <option value="naver">naver.com</option>
                <option value="gm">gmail.com</option>
                <option value="da">daum.com</option>
                <option value="yah">yahoo.com</option>
              </select>
            </td>
          </tr>

        </table>


        <button class="regi_btn">가입하기</button>
      </form>

    </div>

  </div>
  <!-- 회원가입 탭 -->
  <!-- <div class="join_pan">
      <div class="login_title">
          <div class="t1">
          <h1>HANSAM</h1><h3>members</h3>
          </div>
          <div class="t2">한샘몰 회원이 아니시라면 회원가입을 통해 많은 혜택을 누리세요.</div>
          </div>

  </div> -->
</div>
</div>

<footer class="footer"></footer>

</body>
</html>
