package com.hanssem.app.dao;


import com.hanssem.app.dto.ProductDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DealDao {
    @Autowired
    SqlSession session;

    private String namespace="com.hanssem.app.dao.productMapper.";

    // 특정 상품 불러오기
    public ProductDto select(Integer product_number) {
        return session.selectOne(namespace+"select",product_number);
    }
    // 특정 상품의 이미지 불러오기
}
