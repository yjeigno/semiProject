package com.hanssem.app.dao;


import com.hanssem.app.dto.ImageDto;
import com.hanssem.app.dto.ProductDto;
import com.hanssem.app.dto.SizeCodeDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class DealDao {
    @Autowired
    SqlSession session;

        private String namespace="com.hanssem.app.dao.productMapper.";
        private String namespace2="com.hanssem.app.dao.imageMapper.";
        // 특정 상품 불러오기
        public ProductDto select(Integer product_number) {
            return session.selectOne(namespace+"select",product_number);
        }
        // 특정 상품의 이미지 불러오기
        public ImageDto selectImg(Integer product_number){
        return session.selectOne(namespace2+"select",product_number);
        }
        // 특정 상품의 사이즈 불러오기
        public List<SizeCodeDto> selectSize(Integer product_number){
            return session.selectList(namespace+"selectSize",product_number);
        }
}
