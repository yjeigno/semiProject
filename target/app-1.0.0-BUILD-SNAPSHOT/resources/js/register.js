$(document).ready(function(){
////////////////////////아이디 중복체크///////////////////////
    function regi_id_check(){
        $.ajax({
            URL : "/register/registerIdCheck",
            type : "post",
            dataType:"json",
            data:{"member_id " : $("#regi_id").val()},
            success : function(data){
                if(data == 1){
                    alert("중복된 아이디입니다.");

                }else if(data == 0){
                    $("#regi_id").attr("value","Y");
                    alert("사용 가능한 아이디입니다.")
                }
            }
        })
    }

////////////////////////생년월일 자동으로 하이픈///////////////////////
    function brith_auto(birthNum) {
        birthNum = birthNum.replace(/[^0-9]/g, '');
        var tmp = '';
        if( birthNum.length < 4){
            return birthNum;

        }else if(birthNum.length < 6){
            tmp += birthNum.substring(0,4);
            tmp += "-";
            tmp += birthNum.substring(4);
        }else{
            tmp += birthNum.substring(0,4);
            tmp += "-";
            tmp += birthNum.substring(4,2);
            tmp += "-";
            tmp += birthNum.substring(6);
            return tmp;
        }
        return birthNum;

    }
    var regiBirth = document.getElementById('birth_date');
// input 에 값이 입력되었을때를 위해 key up
    regiBirth.onkeyup = function(event){
        event = event || window.Event;
        var _val = this.value.trim();
        this.value = brith_auto(_val) ;
    }


    //////////////////연락처 자동으로 하이픈//////////////////////////
    function phone_auto(phoneNum){
        phoneNum = phoneNum.replace(/[^0-9]/g, '');
        var tmp = '';
        if( phoneNum.length < 4){
            return phoneNum;

        }else if(phoneNum.length < 7){
            tmp += phoneNum.substring(0, 3);
            tmp += '-';
            tmp += phoneNum.substring(3);
            return tmp;

        }else if(phoneNum.length < 11){
            tmp += phoneNum.substring(0, 3);
            tmp += '-';
            tmp += phoneNum.substring(3, 3);
            tmp += '-';
            tmp += phoneNum.substring(6);
            return tmp;

        }else{
            tmp += phoneNum.substring(0, 3);
            tmp += '-';
            tmp += phoneNum.substring(3, 4);
            tmp += '-';
            tmp += phoneNum.substring(7);
            return tmp;
        }
        return phoneNum;
    }

    var regiPhone = document.getElementById('regi_phone');
    // input 에 값이 입력되었을때를 위해 key up
    regiPhone.onkeyup = function(event){
        event = event || window.Event;
        var _val = this.value.trim();
        this.value = phone_auto(_val) ;
    }

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


    /////////////////////////////////////////////////////
    // 주소 검색 -보류*****************
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
            }
        }).open();
    }

})
    