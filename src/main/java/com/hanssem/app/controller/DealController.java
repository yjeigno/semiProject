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

            ProductDto productDto = dealService.getInfo(1);
            m.addAttribute("pInfo",productDto);

            List<ImageColorDto> imageColorDto = dealService.showImgColor(1);
            m.addAttribute("imgList",imageColorDto);

            List<CateSizeDto> sizeList = dealService.showSize(1);
            m.addAttribute("sizeList",sizeList);

            List<ReviewDto> reviewList = dealService.getReview(1);
            m.addAttribute("reviewList",reviewList);

            Double review = dealService.getAvgReview(1);
            m.addAttribute("avgReview",review);

            List<ImageDto> imgDetailList = dealService.getImgDetail(1);
            m.addAttribute("imgDetail",imgDetailList);

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

            Map map = new HashMap();
            map.put("product_number",1);
            map.put("offset",(page-1)*pageSize);
            map.put("pageSize",pageSize);

            List<ReviewDto> reviewPageList = dealService.getReviewPage(map);
            List<ReviewDto> reviewPageTxtList = dealService.getReviewTxtPage(map);
            m.addAttribute("reviewPageList",reviewPageList);
            m.addAttribute("reviewPageTxtList",reviewPageTxtList);
            m.addAttribute("pageHandler",pageHandler);
            m.addAttribute("pageHandlerTxt",pageHandlerTxt);
            return "/deal";

    }
}

