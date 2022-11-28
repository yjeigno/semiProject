package com.hanssem.app.dao;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class specialPriceDao {
    @Autowired
    SqlSession session;

    private String namespace = "com.hanssem.app.dao.specialPriceMapper.";
}
