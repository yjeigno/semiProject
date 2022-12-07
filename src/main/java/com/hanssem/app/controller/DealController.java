package com.hanssem.app.controller;

import com.hanssem.app.dto.*;
import com.hanssem.app.service.DealService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class DealController {

    @Autowired
    DealService dealService;


    @GetMapping("/deal")
    public String deal(Integer page, Integer pageSize, Model m) {
            // 상품정보 가져오기
            ProductDto productDto = dealService.getInfo(1);
            m.addAttribute("pInfo",productDto);
            // 상품 이미지랑 색상 가져오기
            List<ImageColorDto> imageColorDto = dealService.showImgColor(1);
            m.addAttribute("imgList",imageColorDto);
            // 상품 사이즈 가져오기
            List<CateSizeDto> sizeList = dealService.showSize(1);
            m.addAttribute("sizeList",sizeList);
            // 상품 리뷰 가져오기
            List<ReviewDto> reviewList = dealService.getReview(1);
            m.addAttribute("reviewList",reviewList);
            // 상품 리뷰 평균 가져오기
            Double review = dealService.getAvgReview(1);
            m.addAttribute("avgReview",review);
            // 상품 상세이미지 가져오기
            List<ImageDto> imgDetailList = dealService.getImgDetail(1);
            m.addAttribute("imgDetail",imgDetailList);
            // 상품이 특가면 특가 할인율 가져오기
            SpecialPriceDto specialPriceDto = dealService.getDiscount(1);
            m.addAttribute("SpeDiscount",specialPriceDto);


            //pageNation
            if(page==null) page =1;
            if(pageSize==null) pageSize=8;
            //리뷰의 총 게시물 개수 구하기 사진유무
            int totalCount = dealService.getReviewCount(1);
            int totalTxtCount = dealService.getReviewTxtCount(1);
            // 페이징 계산
            PageHandler pageHandler = new PageHandler(totalCount,page,pageSize);
            PageHandler pageHandlerTxt = new PageHandler(totalTxtCount,page,pageSize);

            int totalQnaCount = dealService.getQnaCount(1);
            PageHandler pageHandlerQna = new PageHandler(totalQnaCount,page,pageSize);
            Map map = new HashMap();
            map.put("product_number",1);
            map.put("offset",(page-1)*pageSize);
            map.put("pageSize",pageSize);

            List<ReviewDto> reviewPageList = dealService.getReviewPage(map);
            List<ReviewDto> reviewPageTxtList = dealService.getReviewTxtPage(map);
            List<QnaDto> qnaList = dealService.getQna(map);
//            System.out.println("qnaList : "+qnaList);
            m.addAttribute("qnaList",qnaList);
            m.addAttribute("phQna",pageHandlerQna);

            m.addAttribute("reviewPageList",reviewPageList);
            m.addAttribute("reviewPageTxtList",reviewPageTxtList);
            m.addAttribute("pageHandler",pageHandler);
            m.addAttribute("pageHandlerTxt",pageHandlerTxt);


//            if(page==null) page =1;
//            if(pageSize==null) pageSize=10;

//            int totalQnaCount = dealService.getQnaCount(1);
//            PageHandler pageHandlerQna = new PageHandler(totalQnaCount,page,pageSize);
//            Map map2 = new HashMap();
//            map2.put("product_number",1);
//            map2.put("offset",(page-1)*pageSize);
//            map2.put("pageSize",pageSize);








            return "/deal";

    }
}

