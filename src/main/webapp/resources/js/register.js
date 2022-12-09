$(document).ready(function(){
    // function regi_btn(){
    //    변수 담기
    //    아이디
    //     var regi_id = document.getElementById("regi_id");
    // //    비밀번호
    //     var regi_pw = document.getElementById("regi_pw");
    // //비밀번호 확인
    //     var member_pw_check = document.getElementById("member_pw_check");
    // //이름
    //     var member_name = document.getElementById("member_name");
    //     // 생년월일
    //     var birth_date = document.getElementById("birth_date");
    // //    성별
    //     var member_gender_male = document.getElementById("member_gender_male");
    //     var member_gender_female = document.getElementById("member_gender_female");
    // //    연락처
    //     var regi_phone = document.getElementById("regi_phone");
    // //    이메일
    //     var mail_id = document.getElementById("mail_id");
    // //    주소
    //     var regi_address_detail = document.getElementById("regi_address_detail");
    // //    sms 수신
    //     var sms_y = document.getElementById("sms_y");
    //     var sms_n = document.getElementById("sms_n");
    // //    이용약관
    //     var gree_y = document.getElementById("agree_y");
    //
    //     //각 입력란 공란의 경우
    //     if(regi_id == ""){
    //         alert("아이디를 입력하세요.");
    //         regi_id.focus(); // 아이디 칸 커서 이동
    //         return false;
    //     }
    //     if(regi_pw.value == ""){
    //         alert("비밀번호를 입력하세요.");
    //         regi_id.focus(); // 아이디 칸 커서 이동
    //         return false;
    //     }
    //     //비밀번호 영문/특수/숫자 6~12자
    //     var member_pw_check = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,12}$/;
    //
    //     if (!member_pw_check.test(regi_pw.value)){
    //         alert("비밀번호는 영문/숫자/특수문자 조합으로 6~12자리를 사용해야 합니다.");
    //         regi_pw.focus();
    //         return false;
    //     }
    // //    ** 비밀번호 중복확인
    //     if (member_pw_check.value !== regi_pw.value){
    //         document.getElementById("msg").innerHTML = `${"비밀번호가 일치하지 않습니다."}`;
    //         member_pw_check.focus();
    //         return false;
    //     }
    //     //이름
    //     if (member_name.value == ""){
    //         alert("이름을 입력해주세요.");
    //         member_name.focus();
    //         return false;
    //     }
    // //    생년월일
    //     if (birth_date.value == ""){
    //         alert("생년월일을 입력해주세요.");
    //         birth_date.focus();
    //         return false;
    //     }
    // //    성별
    //     if (!member_gender_male.checked && !member_gender_female.checked){
    //         alert("성별을 선택해주세요.");
    //         member_gender_male.focus();
    //         return false;
    //     }
    // //    연락처
    //     if (regi_phone.value == ""){
    //         alert("연락처를 입력해주세요.");
    //         regi_phone.focus();
    //         return false;
    //     }
    // //    이메일
    // if (mail_id.value == ""){
    //     alert("이메일을 입력해주세요.");
    //     mail_id.focus();
    //     return false;
    // }
    // //      주소
    //     if (regi_address_detail.value == ""){
    //         alert("주소를 입력해주세요.");
    //         regi_address_detail.focus();
    //         return false;
    //     }
    //
    // //      sms 수신
    //     if (!sms_y.checked && !sms_n.checked){
    //         alert("sms 수신여부를 선택해주세요.");
    //         sms_y.focus();
    //         return false;
    //     }
    //
    // //      약관동의
    //     if (gree_y.value == ""){
    //         alert("이용약관에 동의 해주세요.");
    //         gree_y.focus();
    //         return false;
    //     }
    //     // 입력한 값 전송하기
    //     document.$('#regi_form').submit();
    // }
    //


////////////////////////아이디 중복체크///////////////////////
    $('#regi_id').blur(function(){
        $.ajax({
            type:"POST",
            url:"/register/IdCheck",
            data:{
                "member_id":$('#regi_id').val()
            },
            success:function(data){	//data : /register/IdCheck 에서 넘겨준 결과값
                if($.trim(data)=="YES"){
                    if($('#regi_id').val()!=''){
                        window.open("사용가능한 아이디입니다.");
                    }
                }else{
                    if($('#regi_id').val()!=''){
                        window.open("중복된 아이디입니다.");
                        $('#regi_id').val('');
                        $('#regi_id').focus();
                    }
                }
            }
        })
    })



////////////////////////생년월일 자동으로 하이픈///////////////////////
    let birth_date = document.querySelector("#birth_date");
    let warning = document.querySelector(".warning");
    const birth_checker = () => {
        let val = birth_date.value.replace(/\D/g,"");
        const reg = /\D/g;
        EventTarget.value = EventTarget.value.replace(reg, "");

        let leng = val.length;
        let result = '';

        if(leng < 6) result = val;
        else if(leng < 8){
            result += val.substring(0,4);
            result += "-";
            result += val.substring(4);
        } else{
            result += val.substring(0,4);
            result += "-";
            result += val.substring(4,6);
            result += "-";
            result += val.substring(6);
            if(!checkValidDate(result)){
                warning.classList.add("on");
            } else{
                warning.classList.remove("on");
            }
        }
        date.value = result;
    }

    const checkValidDate = (value) => {
        let result = true;
        try {
            let date = value.split("-");
            let y = parseInt(date[0], 10),
                m = parseInt(date[1], 10),
                d = parseInt(date[2], 10);

            let dateRegex = /^(?=\d)(?:(?:31(?!.(?:0?[2469]|11))|(?:30|29)(?!.0?2)|29(?=.0?2.(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00)))(?:\x20|$))|(?:2[0-8]|1\d|0?[1-9]))([-.\/])(?:1[012]|0?[1-9])\1(?:1[6-9]|[2-9]\d)?\d\d(?:(?=\x20\d)\x20|$))?(((0?[1-9]|1[012])(:[0-5]\d){0,2}(\x20[AP]M))|([01]\d|2[0-3])(:[0-5]\d){1,2})?$/;
            result = dateRegex.test(d+'-'+m+'-'+y);
        } catch (err) {
            result = false;
        }
        return result;
    }
//     function brith_auto(birthNum) {
//         birthNum = birthNum.replace(/[^0-9]/g, '');
//         var tmp = '';
//         if( birthNum.length < 4){
//             return birthNum;
//
//         }else if(birthNum.length < 6){
//             tmp += birthNum.substring(0,4);
//             tmp += "-";
//             tmp += birthNum.substring(4);
//         }else{
//             tmp += birthNum.substring(0,4);
//             tmp += "-";
//             tmp += birthNum.substring(4,2);
//             tmp += "-";
//             tmp += birthNum.substring(6);
//             return tmp;
//         }
//         return birthNum;
//
//     }
//     var regiBirth = document.getElementById('birth_date');
// // input 에 값이 입력되었을때를 위해 key up
//     regiBirth.onkeyup = function(event){
//         event = event || window.Event;
//         var _val = this.value.trim();
//         this.value = brith_auto(_val) ;
//     }


    //////////////////연락처 자동으로 하이픈//////////////////////////

    function inputPhoneNumber(obj) {
        let number = obj.value.replace(/[^0-9]/g, "");
        let phone = "";
        if(number.length < 4) {
            return number;
        } else if(number.length < 7) {
            phone += number.substring(0, 3);
            phone += "-";
            phone += number.substring(3);
        } else if(number.length < 11) {
            phone += number.substring(0, 3);
            phone += "-";
            phone += number.substring(3, 3);
            phone += "-";
            phone += number.substring(6);
        } else {
            phone += number.substring(0, 3);
            phone += "-";
            phone += number.substring(3, 4);
            phone += "-";
            phone += number.substring(7);
        }
        obj.value = phone;
    }
    //     let tmp = '';
    //     if(phoneNum.length < 4){
    //         return phoneNum;
    //
    //     }else if(phoneNum.length < 7){
    //         tmp += phoneNum.substring(0, 3);
    //         tmp += '-';
    //         tmp += phoneNum.substring(3);
    //         return tmp;
    //
    //     }else if(phoneNum.length < 11){
    //         tmp += phoneNum.substring(0, 3);
    //         tmp += '-';
    //         tmp += phoneNum.substring(3, 3);
    //         tmp += '-';
    //         tmp += phoneNum.substring(6);
    //         return tmp;
    //
    //     }else{
    //         tmp += phoneNum.substring(0, 3);
    //         tmp += '-';
    //         tmp += phoneNum.substring(3, 4);
    //         tmp += '-';
    //         tmp += phoneNum.substring(7);
    //         return tmp;
    //     }
    //     return phoneNum;
    // }
    //
    // let regiPhone = document.getElementById('regi_phone');
    // // input 에 값이 입력되었을때를 위해 key up
    // regiPhone.onkeyup = function(event){
    //     event = event || window.Event;
    //     let _val = this.value.trim();
    //     this.value = phone_auto(_val) ;
    // }
    //}
    //////////////////////////////////////////////////////




    // 이메일 관련 리스트 선택 기능
    $('#mail_list').change(function(){
        $("#mail_list option:selected").each(function () {

            if($(this).val()== 'self'){ //직접입력
                $("#mail_domain").val('');                        //값 초기화
                $("#mail_domain").attr("disabled",false); //활성화
            }else{ //직접입력이 아닐경우
                $("#mail_domain").val($(this).text());      //선택값 입력
                $("#mail_domain").attr("disabled",true); //비활성화
            }
        });
    });

})
    