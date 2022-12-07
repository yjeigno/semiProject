package com.hanssem.app.controller;

import com.hanssem.app.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
    @Autowired
    @RequestMapping("/main")
    public String main(){
        return "main";
    }






}
