package com.hanssem.app.dao;

import com.hanssem.app.dto.MemberDto;
import jdk.jfr.DataAmount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@Repository
public class RegisterDao {

    @Autowired
    DataSource ds;

    //    회원가입 form 정보 DB 내 저장하기
    public int insertMember(MemberDto memberDto) throws SQLException {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try{                                  // 아이디, 비번, 이름, 생년월일, 연락처, 주소, 이메일, sms동의, 가입일
            String sql = "Insert Into member(member_id, member_pw, member_name, member_email, member_phone, " +
                    "member_birth, member_address, member_gender, member_sms, member_status, " +
                    "member_register_date, member_login_date) " +
                    "values (?,?,?,?,?,?,?,?,?,?,?,?)";
            conn = ds.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, memberDto.getMember_id());
            pstmt.setString(2, memberDto.getMember_pw());
            pstmt.setString(3, memberDto.getMember_name());
            pstmt.setString(4, memberDto.getMember_email());
            pstmt.setString(5, memberDto.getMember_phone());
            pstmt.setInt(6, memberDto.getMember_birth());
            pstmt.setString(7, memberDto.getMember_address());
            pstmt.setInt(8, memberDto.getMember_gender());
            pstmt.setInt(9, memberDto.getMember_sms());
            pstmt.setInt(10, 1);
            pstmt.setTimestamp(11, memberDto.getMember_register_date());
            pstmt.setTimestamp(12, memberDto.getMember_login_date());

            return pstmt.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
            return 0;
        }finally {
            close(pstmt, conn);
        }
    }


    public void close(AutoCloseable... acs) {
        for (AutoCloseable ac : acs)
            try {
                if (ac != null) ac.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
    }
    public int selectMember(MemberDto memberDto) throws SQLException {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try{                                  // 아이디
            String sql = "select Into member(member_id) " +
                    "values (?)";
            conn = ds.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, memberDto.getMember_id());


            return pstmt.executeUpdate();
        }catch (SQLException e){
            e.printStackTrace();
            return 0;
        }finally {
            close(pstmt, conn);
        }
    }

}
