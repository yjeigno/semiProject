package com.hanssem.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginRegisterController {
    @RequestMapping("/login_register")
    public String login_register(){return "register";}
}
