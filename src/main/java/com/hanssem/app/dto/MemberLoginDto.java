package com.hanssem.app.dto;

import java.sql.Timestamp;

public class MemberLoginDto {
    private String member_id;
    private String member_pw;
    private Boolean rememberId;


    public String getMember_id() {
        return member_id;
    }

    public void setMember_id(String member_id) {
        this.member_id = member_id;
    }

    public String getMember_pw() {
        return member_pw;
    }

    public void setMember_pw(String member_pw) {
        this.member_pw = member_pw;
    }

    public boolean isRememberId(){ return rememberId;}

    public void setRememberId(boolean rememberId) {
        this.rememberId = rememberId;
    }

    @Override
    public String toString() {
        return "MemberLoginDto{" +
                "member_id='" + member_id + '\'' +
                ", member_pw='" + member_pw + '\'' +
                ", rememberId=" + rememberId +
                '}';
    }
}
