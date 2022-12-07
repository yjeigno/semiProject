package com.hanssem.app.controller;

import com.hanssem.app.dto.ProductDto;
import com.hanssem.app.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
    @Autowired
    MainService mainService;
//
//    @GetMapping("/main")
//    public String main(Model model){
//
////        ProductDto productDto = mainService
////        return "main";
//    }






}
