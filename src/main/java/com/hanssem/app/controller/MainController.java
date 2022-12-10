package com.hanssem.app.controller;

import com.hanssem.app.dto.CateSizeDto;
import com.hanssem.app.dto.ImageColorDto;
import com.hanssem.app.dto.ProductDto;
import com.hanssem.app.dto.SpecialPriceDto;
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
    @GetMapping("/main")
    public String main(Model model){
//        상품정보
        ProductDto productDto = mainService.getInfo(1);
        model.addAttribute("pInfo",productDto);
        // 상품 이미지랑 색상 가져오기
        List<ImageColorDto> imageColorDto = mainService.showImgColor(1);
        model.addAttribute("imgList",imageColorDto);

        SpecialPriceDto specialPriceDto = mainService.getDiscount(1);
        model.addAttribute("SpeDiscount", specialPriceDto);
        return "main";
    }







}
