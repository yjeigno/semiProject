package com.hanssem.app.dao;

import com.hanssem.app.dto.SpecialPriceDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@Repository
public class SpecialPriceDao {
    @Autowired
    SqlSession session;

    private String namespace = "com.hanssem.app.dao.specialPriceMapper.";

    public List<SpecialPriceDto> selectSpecial(Integer product_number) {
        return session.selectList(namespace + "selectSpecialProduct", product_number);
    }
}
