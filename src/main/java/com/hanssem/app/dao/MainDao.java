package com.hanssem.app.dao;

import com.hanssem.app.dto.*;
import com.mysql.cj.Session;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class MainDao {
    @Autowired
    SqlSession session;

//      상품(인기, 신상품)
    private String productPath="com.hanssem.app.dao.productMapper.";
    private String imagePath="com.hanssem.app.dao.imageMapper.";
    private String SpecialPath="com.hanssem.app.dao.specialPriceMapper.";
    private String namespace = "com.hanssem.app.dao.InteriorMapper.";



    //전체 상품 불러오기
    public List<ProductDto> selectAll(){
        return session.selectList(productPath+"selectAll");
    }


    //전체 이미지 불러오기
    public List<ImageDto> selectProductInfo(){
        return session.selectList(imagePath+"selectAll");
    }


    // 특정 상품의 이미지 불러오기
    public ImageDto selectImg(Integer product_number){
        return session.selectOne(imagePath+"selectImg",product_number);
    }

//    할인율
    public SpecialPriceDto selectDiscount(Integer product_number) {
        return session.selectOne(SpecialPath+"selectSpeDiscount",product_number);
    }
//    인테리어 카테고리 정보 가져오기
    public List<InteriorDto> selectInterior(Integer interior_category_number){
        return session.selectList(namespace+"selectInterior",interior_category_number);
    }
//      인테리어 상세정보
    public List<InteriordetailDto> selectInteriordetail(Integer interior_number){
        return session.selectList(namespace+"selectInteriordetail", interior_number);
    }

}
