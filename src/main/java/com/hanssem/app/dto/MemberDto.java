package com.hanssem.app.dto;

import org.springframework.web.bind.annotation.RequestBody;

import java.sql.Timestamp;

public class MemberDto {
    private String member_id;
    private String member_pw;
    private String member_name;
    private String member_email;
    private String member_phone;
    private Integer member_birth;
    private String member_address;
    private Integer member_gender;
    private Integer member_sns;
    private Integer member_status;
    private Timestamp member_register_date;
    private Timestamp  member_login_date;

    private Boolean rememberId;



    public MemberDto(){}

    public MemberDto(String member_id, String member_pw, String member_name, String member_email, String member_phone, Integer member_birth, String member_address, Integer member_gender, Integer member_sns, Integer member_status, Timestamp member_register_date, Timestamp member_login_date) {
        this.member_id = member_id;
        this.member_pw = member_pw;
        this.member_name = member_name;
        this.member_email = member_email;
        this.member_phone = member_phone;
        this.member_birth = member_birth;
        this.member_address = member_address;
        this.member_gender = member_gender;
        this.member_sns = member_sns;
        this.member_status = member_status;
        this.member_register_date = member_register_date;
        this.member_login_date = member_login_date;
    }



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

    public String getMember_name() {
        return member_name;
    }

    public void setMember_name(String member_name) {
        this.member_name = member_name;
    }

    public String getMember_email() {
        return member_email;
    }

    public void setMember_email(String member_email) {
        this.member_email = member_email;
    }

    public String getMember_phone() {
        return member_phone;
    }

    public void setMember_phone(String member_phone) {
        this.member_phone = member_phone;
    }

    public Integer getMember_birth() {
        return member_birth;
    }

    public void setMember_birth(Integer member_birth) {
        this.member_birth = member_birth;
    }

    public String getMember_address() {
        return member_address;
    }

    public void setMember_address(String member_address) {
        this.member_address = member_address;
    }

    public Integer getMember_gender(int anInt) {
        return member_gender;
    }

    public void setMember_gender(Integer member_gender) {
        this.member_gender = member_gender;
    }

    public Integer getMember_sns() {
        return member_sns;
    }

    public void setMember_sns(Integer member_sns) {
        this.member_sns = member_sns;
    }

    public Integer getMember_status() {
        return member_status;
    }

    public void setMember_status(Integer member_status) {
        this.member_status = member_status;
    }

    public Timestamp getMember_register_date() {
        return member_register_date;
    }

    public void setMember_register_date(Timestamp member_register_date) {
        this.member_register_date = member_register_date;
    }

    public Timestamp getMember_login_date() {
        return member_login_date;
    }

    public void setMember_login_date(Timestamp member_login_date) {
        this.member_login_date = member_login_date;
    }

    public Boolean getRememberId() {
        return rememberId;
    }

    public void setRememberId(Boolean rememberId) {
        this.rememberId = rememberId;
    }

    @Override
    public String toString() {
        return "MemberDto{" +
                "member_id='" + member_id + '\'' +
                ", member_pw='" + member_pw + '\'' +
                ", member_name='" + member_name + '\'' +
                ", member_email='" + member_email + '\'' +
                ", member_phone='" + member_phone + '\'' +
                ", member_birth=" + member_birth +
                ", member_address='" + member_address + '\'' +
                ", member_gender=" + member_gender +
                ", member_sns=" + member_sns +
                ", member_status=" + member_status +
                ", member_register_date=" + member_register_date +
                ", member_login_date=" + member_login_date +
                ", rememberId=" + rememberId +
                '}';
    }
}

