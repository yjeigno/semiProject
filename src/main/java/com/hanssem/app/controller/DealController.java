package com.hanssem.app.controller;

import com.hanssem.app.dto.*;
import com.hanssem.app.service.DealService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class DealController {

    @Autowired
    DealService dealService;


    @GetMapping("/deal")
    public String deal(Integer product_number, Integer page, Integer page_size, Model m) {
        // 상품정보 가져오기
        ProductDto productDto = dealService.getInfo(product_number);
        m.addAttribute("pInfo", productDto);
        // 상품 이미지랑 색상 가져오기
        List<ImageColorDto> imageColorDto = dealService.showImgColor(product_number);
        m.addAttribute("imgList", imageColorDto);
        // 상품 사이즈 가져오기
        List<CateSizeDto> sizeList = dealService.showSize(product_number);
        m.addAttribute("sizeList", sizeList);
        // 상품 리뷰 가져오기
        List<ReviewDto> reviewList = dealService.getReview(product_number);
        m.addAttribute("reviewList",reviewList);
        // 상품 리뷰 평균 가져오기
        Double review = dealService.getAvgReview(product_number);
        m.addAttribute("avgReview",review);
        // 상품 상세이미지 가져오기
        List<ImageDto> imgDetailList = dealService.getImgDetail(product_number);
        m.addAttribute("imgDetail",imgDetailList);
        // 상품이 특가면 특가 할인율 가져오기
        SpecialPriceDto specialPriceDto = dealService.getDiscount(product_number);
        m.addAttribute("SpeDiscount", specialPriceDto);


        //pageNation
        if (page == null) page = 1;
        if (page_size == null) page_size = 8;
        //리뷰의 총 게시물 개수 구하기 사진유무
        int totalCount = dealService.getReviewCount(product_number);
        int totalTxtCount = dealService.getReviewTxtCount(product_number);
        int totalQnaCount = dealService.getQnaCount(product_number);
        // 페이징 계산
        PageHandler pageHandler = new PageHandler(totalCount, page, page_size);
        PageHandler pageHandlerTxt = new PageHandler(totalTxtCount, page, page_size);
        PageHandler pageHandlerQna = new PageHandler(totalQnaCount, page, page_size);

        Map map = new HashMap();
        map.put("product_number", 1);
        map.put("offset", (page - 1) * page_size);
        map.put("page_size", page_size);

        List<ReviewDto> reviewPageList = dealService.getReviewPage(map);
        List<ReviewDto> reviewPageTxtList = dealService.getReviewTxtPage(map);
        List<QnaDto> qnaList = dealService.getQna(map);
//            System.out.println("qnaList : "+qnaList);

        m.addAttribute("reviewPageList", reviewPageList);
        m.addAttribute("reviewPageTxtList", reviewPageTxtList);
        m.addAttribute("qnaList", qnaList);

        m.addAttribute("pageHandler", pageHandler);
        m.addAttribute("pageHandlerTxt", pageHandlerTxt);
        m.addAttribute("phQna", pageHandlerQna);


//            if(page==null) page =1;
//            if(page_size==null) page_size=10;

//            int totalQnaCount = dealService.getQnaCount(1);
//            PageHandler pageHandlerQna = new PageHandler(totalQnaCount,page,page_size);
//            Map map2 = new HashMap();
//            map2.put("product_number",1);
//            map2.put("offset",(page-1)*page_size);
//            map2.put("page_size",page_size);
        return "/deal";
    }

    //    @GetMapping("/purchase")
//        public String purchase(Model m){
//
//            return "purchase";
//    }
    @PostMapping("/purchase")
    public String purchaseInfo(Model m, HttpServletRequest request) {

        m.addAttribute("optionTitle_list", request.getParameter("optionTitle_list").split(","));
        m.addAttribute("size_name_list", request.getParameter("size_name_list").split(","));
        m.addAttribute("color_name_list", request.getParameter("color_name_list").split(","));
        m.addAttribute("pa_list", request.getParameter("pa_list").split(","));
        m.addAttribute("price_list", request.getParameter("price_list").split(","));

        return "purchase";
    }
}

