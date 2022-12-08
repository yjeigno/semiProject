package com.hanssem.app.controller;

import com.hanssem.app.dto.ProductSizeColorDto;
import com.hanssem.app.dto.QnaDto;
import com.hanssem.app.service.DealService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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


//        Map noColor = new HashMap();
        if(sizeColorList.size() == 0){

//            noColor.put("color_code.color_code_name", "noneColor");
//            noColor.put("color_code.color_code_code", "noneColorCode");
//            sizeColorList.add(0, (ProductSizeColorDto) noColor);
        }

        return sizeColorList;
    }
    @PostMapping(value = "/deal/qna")
    public List<QnaDto> qnaList(@RequestBody Map map){
        //pageSize -> page_size
        System.out.println("2번값 : " + map.get("page_size"));
        System.out.println("3번값 : " + map.get("product_number"));
        System.out.println("4번값 : " + map.get("offset"));

        System.out.println("map :" + map);

        List<QnaDto> qnaList = dealService.getQna(map);
        System.out.println("결과값 : "+qnaList.size());
        return qnaList;
    }

}
