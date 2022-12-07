$(function(){
    let btnToggle = document.getElementsByClassName("toggleSwitch")[0];
    let checkerToggle = document.getElementById("toggle");
    btnToggle.addEventListener('click', function (){
        event.preventDefault();
        console.log(checkerToggle.checked);
        if(checkerToggle.checked){
            $('#toggle').prop("checked", false);
        } else {
            $('#toggle').prop("checked", true);
        }
    })
    let pw = document.getElementById("password");
    let pwc = document.getElementById("passwordChk");
    let pwMsg = document.getElementById("pwMsg");
    let pwcMsg = document.getElementById("pwcMsg");
    let btnSubmit = document.getElementById("btn_change_info");
    let regPass = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,25}$/;
    pw.addEventListener('focusin', function (){
        if(!regPass.test(pw.value)){
            pwMsg.innerText = "※비밀번호는 영문/숫자 포함 8자 이상이어야 합니다";
        }
    })
    pw.addEventListener('focusout', function (){
        if(regPass.test(pw.value)){
            pwMsg.innerText = "";
        }
    })
    pwc.addEventListener('focusout', function (){
        if(pw.value!=pwc.value){
            pwcMsg.innerText = "비밀번호가 일치하지 않습니다"
        } else {
            pwcMsg.innerText = "";
        }
    })
    btnSubmit.addEventListener('click', function (){
        if(pw.value!=""){
            if(pw.value!=pwc.value){
                alert("비밀번호 확인이 일치하지 않습니다.");
                return;
            }
            if(!regPass.test(pw.value)){
                alert("비밀번호 생성규칙에 맞지 않습니다.");
                return;
            }
        }
        let phone = document.getElementById("tel1").value.valueOf()+document.getElementById("tel2").value.valueOf()+document.getElementById("tel3").value.valueOf();
        let email = document.getElementById("email1").value+"@"+document.getElementById("email2").value;
        let address = document.getElementById("city").value+" "+document.getElementById("address_detail").value;
        let memberInfo = {
            "member_phone":phone,
            "member_email":email,
            "member_address": address,
            "member_sms": checkerToggle.checked?1:0
        }
        if((pw.value!=null&&pw.value!="")&&pw.value==pwc.value&&regPass.test(pw.value)){
            memberInfo["member_pw"] = pw.value;
        }
        console.log(memberInfo);

        $.ajax({
            url:"/mypage/renewInfo.do",
            type:"POST",
            data: JSON.stringify(memberInfo),
            contentType: "application/json",
            dataType: "JSON",
            success:function (data){
                if(data) {
                    location.reload();
                }else {
                    console.log("값없음");
                }
            },
            error:function (error){
                console.log(JSON.stringify(error));
            }
        })
    })
})