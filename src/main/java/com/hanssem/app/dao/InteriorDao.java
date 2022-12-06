package com.hanssem.app.dao;


import com.hanssem.app.dto.InteriorDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class InteriorDao {

    @Autowired
    SqlSession session;

    private String namespace = "com.hanssem.app.dao.specialPriceMapper.";

    public List<InteriorDto> selectInterior(Integer interior_number){
        return session.selectList(namespace+"selectInterior", interior_number);
    }
}
