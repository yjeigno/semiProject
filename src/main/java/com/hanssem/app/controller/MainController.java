package com.hanssem.app.controller;

import com.hanssem.app.dto.*;
import com.hanssem.app.service.InteriorService;
import com.hanssem.app.service.MainService;
import org.mybatis.logging.Logger;
import org.mybatis.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

@Controller
public class MainController {
    @Autowired
    MainService mainService;

    // 기존꺼
    @GetMapping("/")
    public String main(Model model){

//        상품정보
        List<ProductDto> productDto = mainService.selectAll();
        model.addAttribute("productInfo",productDto);


        List<MainDto> imageDto = mainService.selectProductInfo();
        model.addAttribute("newImgList",imageDto);
        for(MainDto m : imageDto){
            System.out.println(m);
        }

        List<InteriorDto> interior_category = mainService.selectInterior(1);;
        model.addAttribute("list", interior_category);

        return "main";
    }

//    @Autowired
//    private InteriorService interiorService;
//    @GetMapping("/Interior")
//    public String Interior(Model model){
//
//        List<InteriorDto> interior_category = interiorService.selectInterior(1);;
//        model.addAttribute("list", interior_category);
//
//
//
//
//        return "Interior1";
//    }





}