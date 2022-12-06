package com.hanssem.app.controller;

import com.hanssem.app.service.InteriorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class InteriorController {

    @Autowired
    private InteriorService interiorService;

    @GetMapping("/Interior")
    public String Interior(Model model) {

        model.addAttribute("list", interiorService);

        return "Interior1";
    }



    @GetMapping("/Interior2")
    public String Interior2() {
        return "Interior2";
    }

    @GetMapping("/Interior3")
    public String Interior3() {
        return "Interior3";
    }

    @GetMapping("/Interior4")
    public String Interior4() {
        return "Interior4";
    }



}







