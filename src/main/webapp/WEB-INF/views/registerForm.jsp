<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원가입</title>
  <script src="<c:url value='https://code.jquery.com/jquery-1.12.4.js'/>"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
  <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
  <link rel="stylesheet" href="<c:url value='/css/register.css'/>">
  <script defer src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script type="text/javascript" src="<c:url value='/js/register.js'/>"></script>
  <script>
    <%--  주소 검색창 --%>
    function search_post_code(){
      new daum.Postcode({
        oncomplete: function(data){
          //사용자 주소 변수 정의하는 명령어
          var addr ='';
          //사용자가 선택한
          if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우(R)
            addr = data.roadAddress;
          } else { // 사용자가 지번 주소를 선택했을 경우(J)
            addr = data.jibunAddress;
          }
          $("#regi_general_address").val(addr);
          document.getElementById('regi_post_code').value = data.zonecode;
        }
      }).open();
    }
  </script>
  <script>
    $(document).ready(function () {
      // 이메일 관련 리스트 선택 기능
      $('#mail_list').change(function () {
        $("#mail_list option:selected").each(function () {

          if ($(this).val() == 'self') { //직접입력
            $("#mail_domain").val('');//값 초기화
            $("#mail_domain").attr("disabled", false); //활성화
          } else { //직접입력이 아닐경우
            $("#mail_domain").val($(this).text());      //선택값 입력
            $("#mail_domain").attr("disabled", true); //비활성화
          }
        });
      });
    });
  </script>

</head>
<body>
<div id="wrap">
  <jsp:include page="header.jsp" />


<div class="member_sec">
  <div class="tap_btn">
    <a href="<c:url value='/login/login'/>"><div class="m_btn_line"><h2>Login</h2></div></a>
    <a href="register"><div class="m_btn_line tap_checked"><h2>Join</h2></div></a>
  </div>
  <div class="pan_box">
    <!-- ////////////////////회원가입 폼////////////////////// -->
    <div class="regi_pan">
      <div class="regi_title">
        <div class="t1">
          <h1>HANSAM</h1><h3>회원가입</h3>
        </div>
        <div class="t2">한샘몰 회원가입을 통해 많은 혜택을 누리세요.</div>
      </div>

      <form action="<c:url value='/register/add'/>"  method="POST" id="regi_form" name="regi_form"  >
        <%--        아이디 중복확인 --%>

        <table class="regi_form_table">


          <tr class="regi_row_sec">
            <td class="regi_col1">아이디</td>
            <td class="regi_col2 colSpace">
              <%--              아이디 입력--%>
              <input type="text" name="member_id" class="member_id" id="regi_id" value="" onkeyup="id_keyup(this)"onkeydown="id_keyup(this)" minlength="6" maxlength="12">

<%--                <input type="button" type="button" id="regi_id_chk_btn" value="중복확인">--%>
                <span class="min_txt id_input_re_1">사용 가능한 아이디입니다.</span>
                <span class="min_txt id_input_re_2">이미 존재하는 아이디입니다.</span>
                <span class="min_txt final_id_ck">아이디를 입력해주세요.</span>
                <br>
              <span class="min_txt">영문/숫자로 최소 6자 이상 최대 12자 이내로 입력 해주세요.</span>

            </td>
          </tr>
          <script>
            function id_keyup(obj){
              var replaceNotInt = /[^a-zA-Z0-9]/g;

              if (replaceNotInt.test(obj.value)) {
                obj.value = obj.value.substring(0, obj.value.length - 2);
              }
            }

          </script>
          <tr class="regi_row_sec">
            <td class="regi_col1">비밀번호</td>
            <td class="regi_col2 colSpace">
              <input type="password" name="member_pw" id="member_pw"  minlength="6" value="" maxlength="12">
              <span class="min_txt final_pw_ck">비밀번호를 입력해주세요.</span>
              <br>
              <span class="min_txt">영문/숫자/특수기호를 포함해주세요.(6자~12자)</span>
            </td>
          </tr>

          <tr class="regi_row_sec">
            <td class="regi_col1">비밀번호 확인</td>
            <td class="regi_col2 colSpace">
              <input type="password" value="" maxlength="16" id="member_pw_check">
              <span class="min_txt final_pwck_ck">비밀번호 확인을 입력해주세요.</span>
              <span class="min_txt pwck_input_re_1">비밀번호가 일치합니다.</span>
              <span class="min_txt pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
              <br>
              <span class="min_txt">영문/숫자/특수기호를 포함해주세요.(6자~12자)</span>
            </td>
          </tr>

          <tr class="regi_row_sec">
            <td class="regi_col1">이름</td>

            <td class="regi_col2 colSpace">
              <input type="text" name="member_name" id="member_name" value="" maxlength="10">
              <span class="min_txt final_name_ck">이름을 입력해주세요.</span>
            </td>
          </tr>

          <tr class="regi_row_sec">
            <td class="regi_col1">생년월일 / 성별</td>
            <td class="regi_col2 colSpace">
              <input type="text" name="member_birth" id="birth_date" value="" maxlength="8" onkeyup="birth_keyup(this)">
              <%--              성별--%>
              <input type ="radio" name="member_gender" id="member_gender_male" value=0 checked/>
              <input type="radio" name="member_gender" id="member_gender_female" value=1/>

              <label for="member_gender_male"  class="gender_m">남</label>
              <label for="member_gender_female" class="gender_f">여</label>
              <br>
              <span class="min_txt">생년월일 8자리 입력해주세요. <br>ex) YYYYMMDD</span>
              <span class="min_txt warning">생년월일 8자리 입력해주세요.</span>

              <span class="min_txt final_birth_ck">생년월일 8자리 입력해주세요.</span>
            </td>
          </tr>
          <script>
            ////////////////////////생년월일 자동으로 하이픈///////////////////////
            // 특수문자 정규식 변수(공백 미포함)
            function birth_keyup(obj) {
              //
              // let birth_len = obj.value.length;
              // if (Event.keyCode == 8) {
              //   obj.value = obj.value.slice(0, birth_len)
              //   return 0;
              // } else if (birth_len == 4 || birth_len == 7) {
              //   obj.value += '-';
              // }

              var replaceNotInt = /[ \{\}\[\]\/?.,;:|\)*~`!^\_+┼<>@\#$%&\'\"\\\(\=]/gi;

              if (replaceNotInt.test(obj.value)) {
                obj.value = obj.value.substring(0, obj.value.length - 1);
              }
            }
          </script>

          <tr class="regi_row_sec">
            <td class="regi_col1">연락처</td>
            <!-- 000-000-0000 형식 -->
            <td class="regi_col2 colSpace">
              <input type="text" name="member_phone" id="regi_phone"value="" maxlength="13" onkeyup="mobile_keyup(this)">

              <br>
              <span class="min_txt final_phone_ck">연락처를 입력해주세요.</span>
            </td>
          </tr>
          <script>
            // 하이픈 자동 생성
            function mobile_keyup(obj){
              let mobile_len=obj.value.length;
              if(Event.keyCode==8){
                obj.value=obj.value.slice(0,mobile_len);
                return 0;
              }else if (mobile_len==3 || mobile_len==8){
                obj.value += '-';
              }
              var replaceNotInt = /[ \{\}\[\]\/?.,;:|\)*~`!^\_+┼<>@\#$%&\'\"\\\(\=]/gi;

              if (replaceNotInt.test(obj.value)) {
                obj.value = obj.value.substring(0, obj.value.length - 1);
              }

            }
          </script>

          <tr class="regi_row_sec">
            <td class="regi_col1">이메일</td>
            <td class="regi_col2 colSpace">
              <input type="text" name="regi_mail_id" id="mail_id">
              <span>@</span>
              <input type="text" name="regi_mail_domain" id="mail_domain" disabled value="---------------------">
              <select id="mail_list" name="regi_mail_domain">
                <option value="cover"selected>이메일 목록</option>
                <option value="self">직접입력</option>
                <option value="naver.com">naver.com</option>
                <option value="hanmail.com">hanmail.net</option>
                <option value="gmail.com">gmail.com</option>
              </select>
              <br>
              <span class="min_txt final_mail_ck">이메일을 입력해주세요.</span>
            </td>
          </tr>


          <!-- ////////////////////////주소 입력////////////////////// -->
          <tr class="regi_row_sec colSpace">
            <td class="regi_col1">주소</td>
            <td class="regi_col2 colSpace">
              <input type="text" class="regi_post_code" id="regi_post_code" value="" disabled >
              <input type="button" class="regi_address_search" id="regi_address_search" value="주소검색" onclick="search_post_code()">
              <br>
              <input type="text" name="regi_address" id="regi_general_address" value=""readonly>
              <br>
              <input type="text" name="regi_address_detail" id="regi_address_detail" value="" >
              <span class="min_txt final_addr_ck">상세 주소를 입력해주세요.</span>
            </td>
          </tr>

          <tr class="regi_row_sec">
            <td class="regi_col1">sms 수신동의</td>
            <td class="regi_col2 colSpace">
              <input type ="radio" name="member_sms" id="sms_y" value=1 checked/>
              <label for="sms_y" class="regi_sms_y">예, 이벤트 정보를 수신 하겠습니다.</label>
              <br>
              <input type="radio" name="member_sms" id="sms_n" value=0/>
              <label for="sms_n" class="regi_sms_n">아니오, 이벤트 정보를 수신하지 않겠습니다.</label>
            </td>
          </tr>


          <!-- 이용약관 -->
          <tr class="regi_row_sec">
            <td class="regi_col1">이용약관</td>
            <td class="regi_col2 colSpace">

                        <textarea class="agree_form" wrap="off" disabled value>
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
              <input type ="checkbox" id="agree_y" class="agree_y"/>
              <label for="agree_y" class="regi_agree">(필수)예, 정보이용에 동의합니다.</label>

              <span class="min_txt final_agree_ck">약관에 동의 해주세요.</span>
            </td>
          </tr>

        </table>
          <br>

        <button type="submit" class="regi_btn" id="regi_btn">가입하기</button>
      </form>

    </div>
  </div>


</div>
</div>
</body>
</html>