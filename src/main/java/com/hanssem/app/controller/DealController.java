package com.hanssem.app.controller;

import com.hanssem.app.dto.*;
import com.hanssem.app.service.DealService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/deal")
public class DealController {

    @Autowired
    DealService dealService;


    @GetMapping("/deal")
    public String deal( Model m) {

            ProductDto productDto = dealService.getInfo(1);
            m.addAttribute("pInfo",productDto);

            List<ImageColorDto> imageColorDto = dealService.showImgColor(1);
            m.addAttribute("imgList",imageColorDto);

            List<SizeCodeDto> list = dealService.show3(1);
            m.addAttribute("list",list);

            Map map = new HashMap();
            map.put("product_number",1);
            map.put("size_code_name",'Q');
            List<ProductSizeColorDto> list2 = dealService.getColor(map);
            m.addAttribute("list2",list2);

            return "deal";

    }
//    @RequestMapping("/deal")
//    public String deal(){
//        return "deal";
//    }


}
