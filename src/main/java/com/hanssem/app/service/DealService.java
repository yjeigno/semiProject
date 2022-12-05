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
}
