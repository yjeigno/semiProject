package com.hanssem.app.controller;

import com.hanssem.app.dto.CateSizeDto;
import com.hanssem.app.dto.ImageColorDto;
import com.hanssem.app.dto.ProductDto;
import com.hanssem.app.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class MainController {
    @Autowired
    MainService mainService;
//
    @GetMapping("/main")
    public String main(Model model){

        ProductDto productDto = mainService.getInfo(1);
        model.addAttribute("pInfo",productDto);
        // 상품 이미지랑 색상 가져오기
        List<ImageColorDto> imageColorDto = mainService.showImgColor(1);
        model.addAttribute("imgList",imageColorDto);

        // 상품 사이즈 가져오기
        List<CateSizeDto> sizeList = mainService.showSize(1);
        model.addAttribute("sizeList",sizeList);

        return "main";
    }






}
