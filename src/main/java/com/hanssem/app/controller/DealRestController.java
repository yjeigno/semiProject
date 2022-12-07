package com.hanssem.app.controller;

import com.hanssem.app.dto.ProductSizeColorDto;
import com.hanssem.app.service.DealService;
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
//    @PostMapping("/deal/qna/{pageSize}/{page}")
//    public List<>

}
