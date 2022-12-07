package com.hanssem.app.service;

import com.hanssem.app.dao.DealDao;
import com.hanssem.app.dto.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class DealService {

    @Autowired
    DealDao dealDao;

    // 특정 상품의 정보 불러오기
    public ProductDto getInfo(Integer product_number) {
        return dealDao.select(product_number);
    }

    // 특정 상품의 이미지와 색상 불러오기
    public List<ImageColorDto> showImgColor(Integer product_number) {
        return dealDao.selectImgColor(product_number);
    }

    // 특정 상품의 상세이미지 불러오기
    public List<ImageDto> getImgDetail(Integer product_number) {
        return dealDao.selectImgDetail(product_number);
    }

    // 특정 상품의 사이즈 불러오기
    public List<CateSizeDto> showSize(Integer product_number) {
        return dealDao.selectSize(product_number);
    }

    // 특정 상품의 사이즈에 맞는 색상 불러오기
    public List<ProductSizeColorDto> getColor(Map map){
        return dealDao.selectSizeColor(map);
    }

    // 특정 상품에 맞는 리뷰 불러오기
    public List<ReviewDto> getReview(Integer product_number){
        return dealDao.selectReview(product_number);
    }

    // 특정 상품에 맞는 리뷰 평점 불러오기
    public Double getAvgReview(Integer product_number){
        return dealDao.avgReview(product_number);
    }

    // 특정 상품이 특가일 때 할인율 불러오기
    public SpecialPriceDto getDiscount(Integer product_number){
        return dealDao.selectDiscount(product_number);
    }

    // 특정 상품의 리뷰 개수 구하기 (사진 유무)
    public int getReviewCount(Integer product_number) {
        return dealDao.selectReviewCount(product_number);
    }
    public int getReviewTxtCount(Integer product_number) {
        return dealDao.selectReviewTxtCount(product_number);
    }
    //특정 상품의 리뷰 8개 불러오기 (사진 유무)
    public List<ReviewDto> getReviewPage(Map map){
        return dealDao.selectReviewList(map);
    }
    public List<ReviewDto> getReviewTxtPage(Map map){
        return dealDao.selectReviewTxtList(map);
    }
    // 특정 상품의 상품 문의 내역 개수 구하기
    public int getQnaCount(Integer product_number){
        return dealDao.selectQnaCount(product_number);
    }
    // 특정 상품의 상품 문의 내역 특정 개수만큼 불러오기
    public List<QnaDto> getQna(Map map){
        return dealDao.selectQnaList(map);
    }
}
