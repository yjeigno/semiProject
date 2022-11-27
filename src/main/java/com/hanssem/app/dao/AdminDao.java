package com.hanssem.app.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import javax.inject.Inject;

public class AdminDao {
    @Autowired
    SqlSession session;


//    public String login_check(MemberDto dto){
//        return session.selectOne("admin.login_check",dto);
//    }
}
