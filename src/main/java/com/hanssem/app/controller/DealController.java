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
    public String deal( Model m) {

            ProductDto productDto = dealService.getInfo(1);
            m.addAttribute("pInfo",productDto);

            List<ImageColorDto> imageColorDto = dealService.showImgColor(1);
            m.addAttribute("imgList",imageColorDto);

            List<CateSizeDto> sizeList = dealService.showSize(1);
            m.addAttribute("sizeList",sizeList);

//            Map map = new HashMap();
//            map.put("product_number",1);
//            map.put("size_code_name",'Q');
//            List<ProductSizeColorDto> sizeColorList = dealService.getColor(map);
//            m.addAttribute("colorList",sizeColorList);

            return "/deal";

    }
}

