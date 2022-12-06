package com.hanssem.app.controller;

import com.hanssem.app.dto.InteriorDto;
import com.hanssem.app.service.InteriorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;

@Controller
public class InteriorController {

    @Autowired
    private InteriorService interiorService;

    @GetMapping("/Interior")
    public String Interior(Model model){

        List<InteriorDto> interior_category = interiorService.selectInterior(1);;
        model.addAttribute("list", interior_category);




        return "Interior1";
    }



    @GetMapping("/Interior2")
    public String Interior2(Model model) {


        List<InteriorDto> interior_category = interiorService.selectInterior(2);;
        model.addAttribute("list", interior_category);


        return "Interior2";
    }

    @GetMapping("/Interior3")
    public String Interior3(Model model) {

        List<InteriorDto> interior_category = interiorService.selectInterior(3);;
        model.addAttribute("list", interior_category);


        return "Interior3";
    }

    @GetMapping("/Interior4")
    public String Interior4(Model model) {


        List<InteriorDto> interior_category = interiorService.selectInterior(4);;
        model.addAttribute("list", interior_category);

        return "Interior4";
    }



}







