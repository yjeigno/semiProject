package com.hanssem.app.controller;

import com.hanssem.app.dao.DealDao;
import com.hanssem.app.dto.ImageDto;
import com.hanssem.app.dto.ProductDto;
import com.hanssem.app.dto.SizeCodeDto;
import com.hanssem.app.service.DealService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/deal")
public class dealController {

    @Autowired
    DealService dealService;


    @GetMapping("/deal")
    public String deal( Model m) {
        ProductDto productDto = dealService.show(1);
        ImageDto imageDto = dealService.show2(1);
        List<SizeCodeDto> list = dealService.show3(1);
        m.addAttribute("pdto",productDto);
        m.addAttribute("idto",imageDto);
        m.addAttribute("list",list);
        return "deal";
    }
//    @RequestMapping("/deal")
//    public String deal(){
//        return "deal";
//    }


}
