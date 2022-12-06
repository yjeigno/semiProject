function formCheck(frm) {
    let msg ='';

    if(frm.id.value.length==0) {
        setMessage('아이디를 다시 입력해주세요.', frm.member_id);
        return false;
    }

    if(frm.pw.value.length==0) {
        setMessage('비밀번호를 다시 입력해주세요.', frm.member_pw);
        return false;
    }

    return true;
}

function setMessage(msg, element){
    document.getElementById("msg").innerHTML = ` ${'${msg}'}`;

    if(element) {
        element.select();
    }
}