package com.hanssem.app.dao;

import com.hanssem.app.dto.AddressDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

@Repository
public class AddressDao {

    @Autowired
    SqlSession session;

    private static String namespace = "com.hanssem.app.dao.addressMapper.";


    public List<AddressDto> selectAddress(Integer address_number) {
        return session.selectList(namespace + "selectAddress", address_number);


    }


    public int insertAddress(AddressDto addressDto) throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {                                  // 아이디, 비번, 이름, 생년월일, 연락처, 주소, 이메일, sms동의, 가입일
            String sql = "Insert Into address(address_home,address_name,address_phone,address_adrs)" +
                    "values(?,?,?,?)";
            conn = session.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, addressDto.getAddress_home());
            pstmt.setString(2, addressDto.getAddress_name());
            pstmt.setString(3, addressDto.getAddress_phone());
            pstmt.setString(4, addressDto.getAddress_adrs());


            return pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } finally {
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

    public List<AddressDto> insert(String address_home) {
        return session.selectList(namespace + "insert", address_home);
    }
}