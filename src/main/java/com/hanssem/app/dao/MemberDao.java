package com.hanssem.app.dao;

import com.hanssem.app.dto.MemberDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.*;

@Repository
public class MemberDao {

    @Autowired
    DataSource ds;

//    MemberDao selectMember(String member_id) {
//        return null;
//    }

    public MemberDto LoginMember(String member_id, String member_pw) throws Exception {


        Connection conn = ds.getConnection();

        String sql="select * from member where member_id =? and member_pw=?";

        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, member_id);
        pstmt.setString(2, member_pw);
        pstmt.setString(2, member_pw);

        ResultSet rs = pstmt.executeQuery();
//
        if(rs.next()){
            MemberDto member = new MemberDto();
            member.setMember_id(rs.getString(2));
            member.setMember_pw(rs.getString(3));
            member.setMember_name(rs.getString(4));
            member.setMember_email(rs.getString(5));
            member.setMember_phone(rs.getString(6));
            member.setMember_birth(rs.getInt(7));
            member.setMember_address(rs.getString(8));
            member.getMember_gender(rs.getInt(9));
            member.setMember_sms(rs.getInt(10));
            member.setMember_status(rs.getInt(11));
            member.setMember_register_date(rs.getTimestamp(12));
            member.setMember_login_date(rs.getTimestamp(13));

            return member;
        }
            return null;

    }
//      아이디 정보 가져오기
    public MemberDto selectMember(String member_id) throws Exception {
        Connection conn = ds.getConnection();

        String sql="select * from member where member_id =?";

        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, member_id);

        ResultSet rs = pstmt.executeQuery();

        if(rs.next()){
            MemberDto member = new MemberDto();
            member.setMember_id(rs.getString(2));
            member.setMember_pw(rs.getString(3));
            member.setMember_name(rs.getString(4));
            member.setMember_email(rs.getString(5));
            member.setMember_phone(rs.getString(6));
            member.setMember_birth(rs.getInt(7));
            member.setMember_address(rs.getString(8));
            member.getMember_gender(rs.getInt(9));
            member.setMember_sms(rs.getInt(10));
            member.setMember_status(rs.getInt(11));
            member.setMember_register_date(rs.getTimestamp(12));
            member.setMember_login_date(rs.getTimestamp(13));

            return member;
        }
        return null;
//
    }



}
