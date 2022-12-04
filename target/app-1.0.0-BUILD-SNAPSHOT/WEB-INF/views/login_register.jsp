<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>로그인페이지</title>
  <link rel="stylesheet" href="./css/common.css">
  <link rel="stylesheet" href="./css/header.css">
  <link rel="stylesheet" href="./css/login_register.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <!-- <script defer src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> -->
  <script src=".js/header.js"></script>
  <script src=".js/login_register.js"></script>

</head>
<body>
<div id="wrap">

  <%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인페이지 초안</title>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script defer src="./js/header.js"></script>
    <script defer src="./js/main.js"></script>
    <link rel="stylesheet" href="./css/common.css">
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/main.css">
  </head>

  <div>
  <header class="header">
    <div class="content_area header_top">
      <ul class="top_nav_ul">
        <!-- 회원가입 페이지로 이동 -->
        <li><a href="#">JOIN</a></li>
        <!-- 로그인 페이지로 이동 -->
        <li><a href="#">LOGIN</a></li>
        <!-- 위시리스트 내역 페이지로 이동 -->
        <li><a href="#">WISHLIST</a></li>
        <!-- 본인인증 후 / 마이페이지로 이동 -->
        <li><a href="#">MYPAGE</a></li>
        <li id="search_icon">
          <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 48 48">
            <path d="M31 28h-1.59l-.55-.55C30.82 25.18 32 22.23 32 19c0-7.18-5.82-13-13-13S6 11.82 6 19s5.82 13 13 13c3.23 0 6.18-1.18 8.45-3.13l.55.55V31l10 9.98L40.98 38 31 28zm-12 0c-4.97 0-9-4.03-9-9s4.03-9 9-9 9 4.03 9 9-4.03 9-9 9z"/>
          </svg>
        </li>
      </ul>
      <div class="search_box">
        <form action="" method="post"name="search">
          <input class="search_bar" type="text" name="search" placeholder="검색어를 입력해주세요.">
          <input class="search_btn" type="button" value="검색">
        </form>
      </div>
      <!-- 로고 클릭시 메인페이지로 이동 -->
      <a href="#"><div class="logo"><img src="img/headerImg/logo_black.png" alt=""></div></a>
    </div>

    <div class="header_bottom">
      <div class="content_area">
        <ul class="bottom_nav_ul">
          <li class="box">Furniture</li>
          <li class="box">Lighting</li>
          <li class="box">Fabric</li>
          <!-- 홈데코 클릭시 인테리어 페이지 이동 -->
          <li><a href="">Home Deco</a></li>
          <!-- 특가페이지 이동 -->
          <li><a href="">Hot Deal</a></li>
        </ul>
      </div>
    </div>
    <div class="menu_box">
      <div class="content_area o_f_hidden">
        <ul class="ul_category_box">
          <li class="li_Title">Furniture</li>
          <li class="li_content">
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Table</li>
              <li class="ca_img"><img src="img/headerImg/Furn1.png"></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Table & Dining</li>
              <li class="ca_img"><img src="img/headerImg/Furn2.png"></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Chair</li>
              <li class="ca_img"><img src="img/headerImg/Furn3.png"></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Sofa</li>
              <li class="ca_img"><img src="img/headerImg/Furn4.png"></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Desk</li>
              <li class="ca_img"><img src="img/headerImg/Furn5.png"></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">TV Stand & Storage</li>
              <li class="ca_img"><img src="img/headerImg/Furn6.png"></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Small Furniture</li>
              <li class="ca_img"><img src="img/headerImg/Furn7.png"></li>
            </ul>
            <ul class="ca_box" onclick="location.href='#';">
              <li class="ca_txt">Bed</li>
              <li class="ca_img"><img src="img/headerImg/Furn8.png"></li>
            </ul>
          </li>

        </ul>
        <ul class="ul_category_box">
          <li class="li_Title">Lighting</li>
          <li>
            <ul class="li_content str">
              <li class="l_txt">pendant</li>
              <li class="l_txt">table</li>
              <li class="l_txt">floor lamp</li>
              <li class="l_txt">wall</li>
              <li class="l_txt">ceiling</li>
            </ul>
          </li>

        </ul>
        <ul class="ul_category_box">
          <li class="li_Title">Fabric</li>
          <li>
            <ul class="li_content str right">
              <li class="l_txt">Curtain</li>
              <li class="l_txt">Rug</li>
              <li class="l_txt">blind</li>
              <li class="l_txt">mat</li>
              <li></li>
            </ul>
          </li>

        </ul>
        <!-- <ul class="ul_category_box">
            <li class="li_Title">Home Deco</li>
            <li class="li_content"></li>

        </ul>
        <ul class="ul_category_box">
            <li class="li_Title">Hot Deal</li>
            <li class="li_content"></li>

        </ul> -->
      </div>
    </div>
  </header>
  <div class="h_100"></div>
  </div>

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

      <form action="#" method="POST" id="regi_form" onsubmit="return formCheck(this)">

        <table class="regi_form_table">



          <tr class="regi_row_sec">
            <td class="regi_col1">아이디</td>
            <td class="regi_col2 colSpace">
              <input type="text" name="regi_id" value="" minlength="6" maxlength="12">
              <input type="button"name='regi_id_chk' value="중복확인" onclick="">
              <br>
              <span class="min_txt">최소 6자 이상 최대 12자 이내로 입력 해주세요.</span>
              <!-- <div class="regi_msg" id="regi_msg">${URLDecoder.decode(param.msg, "utf-8")}</div> -->
            </td>
          </tr>

          <tr class="regi_row_sec">
            <td class="regi_col1">비밀번호</td>
            <td class="regi_col2 colSpace">
              <input type="password" name="regi_pw" minlength="6" value="" maxlength="12">
              <br>
              <span class="min_txt">영문/숫자/특수기호를 포함해주세요.(6자~12자)</span>
            </td>
          </tr>

          <tr class="regi_row_sec">
            <td class="regi_col1">비밀번호 확인</td>
            <td class="regi_col2 colSpace">
              <input type="password" name="regi_pwdCheck" value="" maxlength="16">
            </td>

          </tr>

          <tr class="regi_row_sec">
            <td class="regi_col1">이름</td>
            <td class="regi_col2 colSpace"><input type="text" name="regi_name" value="" maxlength="10"></td>
          </tr>

          <tr class="regi_row_sec">
            <td class="regi_col1">생년월일 / 성별</td>
            <td class="regi_col2 colSpace">
              <input type="text" name="birth" value="" maxlength="8">
              <input type ="radio" name="regi_gender" id="regi_gender_male" checked/>
              <input type="radio" name="regi_gender" id="regi_gender_female"/>

              <label for="regi_gender_male" class="gender_m">남</label>
              <label for="regi_gender_female" class="gender_f">여</label>
              <br>
              <span class="min_txt">생년월일 8자리 입력해주세요.</span>
            </td>
          </tr>

          <tr class="regi_row_sec">
            <td class="regi_col1">연락처</td>
            <!-- 000-000-0000 형식 -->
            <td class="regi_col2 colSpace">
              <input type="text" name="regi_phone" id="regi_phone"value="" maxlength="13">
            </td>
          </tr>

          <tr class="regi_row_sec">
            <td class="regi_col1">이메일</td>
            <td class="regi_col2 colSpace">
              <input type="text" name="regi_mail_id" id="mail_id">
              <span>@</span>
              <input type="text" name="regi_mail_domain" id="mail_domain" disabled value="---------------------">
              <select name="mail_list" id="mail_list">
                <option value="cover"selected>이메일 목록</option>
                <option value="self">직접입력</option>
                <option value="naver">naver.com</option>
                <option value="hanmail">hanmail.net</option>
                <option value="gmail">gmail.com</option>
              </select>
            </td>
          </tr>

          <!-- ////////////////////////현재 보류////////////////////// -->
          <tr class="regi_row_sec colSpace">
            <td class="regi_col1">주소</td>
            <td class="regi_col2 colSpace">
              <input type="text" class="regi_post_code" id="regi_post_code" value="" readonly>
              <input type="button" class="regi_address_search" id="regi_address_search" value="주소검색" onclick="search_post_code()">
              <br>
              <input type="text" name="regi_general_address" id="regi_general_address" value="" readonly>
              <br>
              <input type="text" name="regi_address_detail" id="regi_address_detail" value="" minlength="6" maxlength="12">
            </td>
          </tr>

          <tr class="regi_row_sec">
            <td class="regi_col1">sms 수신동의</td>
            <td class="regi_col2 colSpace">
              <input type ="radio" name="sms_chk" id="sms_y" checked>
              <label for="sms_y" class="regi_sms_y">예, 이벤트 정보를 수신 하겠습니다.</label>
              <br>
              <input type="radio" name="sms_chk" id="sms_n">
              <label for="sms_n" class="regi_sms_n">아니오, 이벤트 정보를 수신하지 않겠습니다.</label>
            </td>
          </tr>


          <!-- 이용약관 -->
          <tr class="regi_row_sec">
            <td class="regi_col1">이용약관</td>

            <td class="regi_col2 colSpace">

                        <textarea class="agree_form"  wrap="hard" disabled>
가. 개인정보의 수집 및 이용 목적
국가공간정보포털은 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며, 이용 목적이 변경되는 경우에는 개인정보 보호법 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.

나. 정보주체와 법정대리인의 권리ㆍ의무 및 행사방법
① 정보주체(만 14세 미만인 경우에는 법정대리인을 말함)는 언제든지 개인정보 열람·정정·삭제·처리정지 요구 등의 권리를 행사할 수 있습니다.
② 제1항에 따른 권리 행사는 개인정보보호법 시행규칙 별지 제8호 서식에 따라 작성 후 서면, 전자우편 등을 통하여 하실 수 있으며, 기관은 이에 대해 지체 없이 조치하겠습니다.
③ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.
④ 개인정보 열람 및 처리정지 요구는 개인정보 보호법 제35조 제5항, 제37조 제2항에 의하여 정보주체의 권리가 제한 될 수 있습니다.
⑤ 개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.
⑥ 정보주체 권리에 따른 열람의 요구, 정정ㆍ삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.

다. 수집하는 개인정보의 항목
국가공간정보포털 회원정보(필수): 이름, 이메일(아이디), 비밀번호

라. 개인정보의 보유 및 이용기간
국가공간정보포털은 법령에 따른 개인정보 보유ㆍ이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의 받은 개인정보 보유ㆍ이용기간 내에서 개인정보를 처리ㆍ보유합니다.

- 수집근거: 정보주체의 동의
- 보존기간: 회원 탈퇴 요청 전까지(1년 경과 시 재동의)
- 보존근거: 정보주체의 동의

마. 동의 거부 권리 및 동의 거부에 따른 불이익
위 개인정보의 수집 및 이용에 대한 동의를 거부할 수 있으나, 동의를 거부할 경우 회원 가입이 제한됩니다.
                        </textarea>
              <br>
              <input type ="checkbox" name="agree_y" id="agree_y">
              <label for="agree_y" class="regi_agree"><span>(필수)예, 정보이용에 동의합니다.</span></label>
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