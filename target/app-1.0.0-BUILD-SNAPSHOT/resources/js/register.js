//유효성 검사
var code = "";
var idCheck = false;            // 아이디
var idckCheck = false;            // 아이디 중복 검사
var pwCheck = false;            // 비번
var pwckCheck = false;            // 비번 확인
var pwckcorCheck = false;        // 비번 확인 일치 확인
var nameCheck = false;            // 이름
var numberCheck = false;          //연락처
var mailCheck = false;            // 이메일
var addressCheck = false;
var birthCheck = false;
var agreeCheck = false;

$(document).ready(function () {
    $(".regi_btn").click(function () {

        var id = $('#regi_id').val();
        var pw = $('#member_pw').val();
        var pwchk = $('#member_pw_check').val();
        var name = $('#member_name').val();
        var birth = $('#birth_date').val();
        var phone = $('#regi_phone').val();
        var mail = $('#mail_id').val();
        var addr = $('#regi_address_detail').val();
        var agree = $('#agree_y').val();


        if (id == "") {
            $('.final_id_ck').css('display', 'inline');
            idCheck = false;
        } else {
            $('.final_id_ck').css('display', 'none');
            idCheck = true;
        }
        //비번
        if (pw == "") {
            $('.final_pw_ck').css('display', 'inline');
            pwCheck = false;
        } else {
            $('.final_pw_ck').css('display', 'none');
            pwCheck = true;
        }
        //    비번확인
        if (pwchk == "") {
            $('.final_pwck_ck').css('display', 'inline');
            pwckCheck = false;
        } else {
            $('.final_pwck_ck').css('display', 'none');
            pwckCheck = true;
        }
        //이름확인
        if (name == "") {
            $('.final_name_ck').css('display', 'inline');
            nameCheck = false;
        } else {
            $('.final_name_ck').css('display', 'none');
            nameCheck = true;
        }
        if (birth == "") {
            $('.final_birth_ck').css('display', 'inline');
            birthCheck = false;
        } else {
            birthCheck = true;
        }
        if (phone == "") {
            $('.final_phone_ck').css('display', 'inline');
            numberCheck = false;
        } else {
            $('.final_phone_ck').css('display', 'none');
            numberCheck = true;
        }
        //이메일
        if (mail == "") {
            $('.final_mail_ck').css('display', 'inline');
            mailCheck = false;
        } else {
            $('.final_mail_ck').css('display', 'none');
            mailCheck = true;
        }
        /* 주소 유효성 검사 */
        if (addr == "") {
            $('.final_addr_ck').css('display', 'inline');
            addressCheck = false;
        } else {
            $('.final_addr_ck').css('display', 'none');
            addressCheck = true;
        }
        if (agree == "") {
            $('.final_agree_ck').css('display', 'inline');
            agreeCheck = false;
        } else {
            $('.final_agree_ck').css('display', 'none');
            agreeCheck = true;
        }

        /* 최종 유효성 검사 */
        if (idCheck && pwCheck && pwckCheck && pwckcorCheck && nameCheck && mailCheck && numberCheck && birthCheck && addressCheck && agreeCheck) {
            $("#regi_form").submit();
            $("#regi_form").attr("action", "register/add");
        } else {
            $("#regi_form").submit(alert("가입내용을 다시 확인해주세요."));
            return false;
        }
    });

    // $("#regi_id_chk_btn").click(function () {
    //     var memberId = $('#regi_id').val();
    //     var data = {member_id: memberId}
    //
    //     $.ajax({
    //         type: "post",
    //         url: "/hanssem/register/idChk",
    //         data: data,
    //         success: function (result) {
    //
    //             if (result != 'fail') {
    //                 $('.in_input_re_1').css("display", "inline");
    //                 $('.in_input_re_2').css("display", "none");
    //                 idCheck = true;
    //             } else {
    //                 $('.in_input_re_1').css("display", "none");
    //                 $('.in_input_re_2').css("display", "inline");
    //                 idCheck = false;
    //             }
    //         }
    //     });
    // });

    $('#member_pw_check').on("propertyChange change keyup paste input", function () {
        var pw = $('#member_pw').val();
        var pwck = $('#member_pw_check').val();
        $('.final_pwck_ck').css('display', 'none');

        if (pw == pwck) {
            $('.pwck_input_re_1').css('display', 'inline');
            $('.pwck_input_re_2').css('display', 'none');
            pwckcorCheck = true;
        } else {
            $('.pwck_input_re_1').css('display', 'none');
            $('.pwck_input_re_2').css('display', 'inline');
            pwckcorCheck = false;
        }
    });
});






    