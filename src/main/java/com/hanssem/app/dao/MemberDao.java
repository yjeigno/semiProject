package com.hanssem.app.dao;

import org.springframework.stereotype.Repository;

import java.sql.Timestamp;

@Repository
public class MemberDao {
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



}
