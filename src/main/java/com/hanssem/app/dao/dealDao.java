package com.hanssem.app.dao;

import com.hanssem.app.dto.dealDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class dealDao {
    @Autowired
    SqlSession session;

    private String namespace="com.hanssem.app.dao.dealMapper.";

    public dealDto select(int product_number) {
        return session.selectOne(namespace+"select",product_number);
    }
}
