package com.hanssem.app.controller;

import com.hanssem.app.dto.PageHandler;
import com.hanssem.app.dto.ProductSizeColorDto;
import com.hanssem.app.dto.QnaDto;
import com.hanssem.app.service.DealService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@RestController
public class DealRestController {
    @Autowired
    DealService dealService;

    private static final Logger log = LogManager.getLogger(DealRestController.class);

    /*
    *  1. 가져올 범위의 쿼리문 작성
    *  2. Ajax 호출 jQuery 작성
    *  3. 페이지네이션할 범위 정하기
    *  4. Ajax -> 페이징
    * */

    @PostMapping(value = "/deal/color")
    public List<ProductSizeColorDto> sizeColorList(@RequestBody Map map) {
        System.out.println("size_code_name : " + map.get("size_code_name"));
        System.out.println("product_number : " + map.get("product_number"));
        System.out.println("map :" + map);
        List<ProductSizeColorDto> sizeColorList = dealService.getColor(map);
        System.out.println("결과값 : "+sizeColorList.size());
        System.out.println(sizeColorList);

        return sizeColorList;
    }
    @PostMapping(value = "/deal/qna")
    public  Map<String,Object> qnaList(@RequestBody Map map, @RequestParam(value = "page", defaultValue = "1", required = false) int page , Model m)
    {
        Map<String,Object> result = new HashMap<String, Object>();
        System.out.println("2번값 : " + map.get("page_size"));
        System.out.println("3번값 : " + map.get("product_number"));
        System.out.println("4번값 : " + map.get("offset"));

        int totalQnaCount = dealService.getQnaCount((Integer) map.get("product_number"));
        PageHandler qnaPageHandler = new PageHandler(totalQnaCount,page,10);
        m.addAttribute("qnaPageHandler",qnaPageHandler);
        System.out.println("map :" + map);

        List<QnaDto> qnaList = dealService.getQna(map);
        result.put("qnalist",qnaList);
        result.put("qnaPageHandler",qnaPageHandler);
        System.out.println("결과값 : "+qnaList.size());
        return result;
    }

}
