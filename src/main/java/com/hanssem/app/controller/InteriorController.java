package com.hanssem.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InteriorController {
    @GetMapping("/Interior")
    public String Interior() {
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

