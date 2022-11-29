package com.hanssem.app.controller;

import com.hanssem.app.dao.DealDao;
import com.hanssem.app.dto.ImageDto;
import com.hanssem.app.dto.ProductDto;
import com.hanssem.app.service.DealService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/deal")
public class dealController {

    @Autowired
    DealService dealService;


//    @GetMapping("/deal")
//    public String deal( Model m) {
//        ProductDto productDto = dealService.show(1);
//        ImageDto imageDto = dealService.show2(1);
//        m.addAttribute(productDto);
//        m.addAttribute(imageDto);
//        return "deal";
//    }
    @RequestMapping("/deal")
    public String deal(){
        return "deal";
    }


}
