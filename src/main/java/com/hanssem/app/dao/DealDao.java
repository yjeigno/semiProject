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
        private String ReviewPath="com.hanssem.app.dao.reviewMapper.";
        private String SpecialPath="com.hanssem.app.dao.specialPriceMapper.";
        private String QnaPath="com.hanssem.app.dao.qnaMapper.";
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

        // 특정 상품의 상세이미지 경로 불러오기
        public List<ImageDto> selectImgDetail(Integer product_number){
            return session.selectList(imagePath+"selectImgDetail",product_number);
        }
        // 특정 상품의 사이즈 불러오기
        public List<CateSizeDto> selectSize(Integer product_number){
            return session.selectList(productPath+"selectSize",product_number);
        }
        // 특정 상품의 사이즈에 맞는 컬러 불러오기
        public List<ProductSizeColorDto> selectSizeColor(Map map){
            return session.selectList(productPath+"selectSizeColor",map);
        }
        // 특정 상품에 맞는 리뷰 불러오기
        public List<ReviewDto> selectReview(Integer product_number){
            return session.selectList(ReviewPath+"selectReview",product_number);
        }
        // 특정 상품에 맞는 리뷰 평점 불러오기
        public  Double avgReview(Integer product_number){
            return session.selectOne(ReviewPath+"avgReview",product_number);
        }
        // 특정 상품이 특가일 때 할인율 불러오기
        public SpecialPriceDto selectDiscount(Integer product_number){
            return session.selectOne(SpecialPath+"selectSpeDiscount",product_number);
        }
        // 특정 상품의 리뷰 개수 구하기 (사진 유무)
        public int selectReviewCount(Integer product_number){
            return session.selectOne(ReviewPath+"reviewCount",product_number);
        }
        public int selectReviewTxtCount(Integer product_number){
            return session.selectOne(ReviewPath+"reviewTxtCount",product_number);
        }
        // 특정 상품의 이미지가 있는 리뷰 8개 불러오기

        public List<ReviewDto> selectReviewList(Map map){
            return session.selectList(ReviewPath+"selectReviewPage",map);
        }
        // 특정 상품의 이미지가 없는 리뷰 8개 불러오기
        public List<ReviewDto> selectReviewTxtList(Map map){
            return session.selectList(ReviewPath+"selectReviewTxtPage",map);
        }

        // 특정 상품의 상품 문의 내역 개수 구하기
        public int selectQnaCount(Integer product_number){
            return session.selectOne(QnaPath+"count",product_number);
        }
        // 특정 상품의 상품 문의 내역 특정 개수만큼 불러오기
        public List<QnaDto> selectQnaList(Map map){
            return session.selectList(QnaPath+"selectQna",map);
        }
}
