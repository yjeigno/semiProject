package com.hanssem.app.dao;


import com.hanssem.app.dto.*;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class DealDao {
    @Autowired
    SqlSession session;

        private String productPath="com.hanssem.app.dao.productMapper.";
        private String imagePath="com.hanssem.app.dao.imageMapper.";
        // 특정 상품 불러오기
        public ProductDto select(Integer product_number) {
            return session.selectOne(productPath+"select",product_number);
        }
        // 특정 상품의 이미지 불러오기
        public ImageDto selectImg(Integer product_number){
        return session.selectOne(imagePath+"selectImg",product_number);
        }
        // 특정 상품의 이미지경로와 이미지에 맞는 색상 불러오기
        public List<ImageColorDto> selectImgColor(Integer product_number){
            return session.selectList(imagePath+"selectImgColor",product_number);
        }

        // 특정 상품의 사이즈 불러오기
        public List<CateSizeDto> selectSize(Integer product_number){
            return session.selectList(productPath+"selectSize",product_number);
        }
        // 특정 상품의 사이즈에 맞는 컬러 불러오기
        public List<ProductSizeColorDto> selectSizeColor(Map map){
            return session.selectList(productPath+"selectSizeColor",map);
        }
}
