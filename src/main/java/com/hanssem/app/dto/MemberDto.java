package com.hanssem.app.dto;

import java.sql.Date;
import java.sql.Timestamp;

public class MemberDto {

    private Integer member_number;

    private String member_id;
    private String member_pw;
    private String member_name;
    private String member_email;
    private String member_phone;
    private Integer member_birth;
    private String member_address;
    private Integer member_gender;
    private Integer member_sms;
    private Integer member_status;
    private Timestamp member_register_date;
    private Timestamp  member_login_date;

    private String regi_mail_id;

    private String regi_mail_domain;

    private String regi_address;

    private String regi_address_detail;


    public void setMember_number(Integer member_number) {
        this.member_number = member_number;
    }

    public String getRegi_mail_id() {
        return regi_mail_id;
    }

    public void setRegi_mail_id(String regi_mail_id) {
        this.regi_mail_id = regi_mail_id;
    }

    public String getRegi_mail_domain() {
        return regi_mail_domain;
    }

    public void setRegi_mail_domain(String regi_mail_domain) {
        this.regi_mail_domain = regi_mail_domain;
    }

    public String getRegi_address() {
        return regi_address;
    }

    public void setRegi_address(String regi_address) {
        this.regi_address = regi_address;
    }

    public String getRegi_address_detail() {
        return regi_address_detail;
    }

    public void setRegi_address_detail(String regi_address_detail) {
        this.regi_address_detail = regi_address_detail;
    }

    private Boolean rememberId;

    public MemberDto(){}

    public MemberDto(Integer member_number, String member_id, String member_pw, String member_name, String member_email, String member_phone, Integer member_birth, String member_address, Integer member_gender, Integer member_sms, Integer member_status, Timestamp member_register_date, Timestamp member_login_date) {
        this.member_number = member_number;
        this.member_id = member_id;
        this.member_pw = member_pw;
        this.member_name = member_name;
        this.member_email = member_email;
        this.member_phone = member_phone;
        this.member_birth = member_birth;
        this.member_address = member_address;
        this.member_gender = member_gender;
        this.member_sms = member_sms;
        this.member_status = member_status;
        this.member_register_date = member_register_date;
        this.member_login_date = member_login_date;
    }

    public Integer getMember_number() {
        return member_number;
    }
    public Integer getMember_gender() {
        return member_gender;
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

    public Integer getMember_sms() {
        return member_sms;
    }

    public void setMember_sms(Integer member_sms) {
        this.member_sms = member_sms;
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
                ", member_sms=" + member_sms +
                ", member_status=" + member_status +
                ", member_register_date=" + member_register_date +
                ", member_login_date=" + member_login_date +
                ", rememberId=" + rememberId +
                '}';
    }
}

