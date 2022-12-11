package com.hanssem.app.controller;

import com.hanssem.app.dao.RegisterDao;
import com.hanssem.app.dto.MemberDto;
import com.hanssem.app.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import java.net.URLEncoder;

@Controller

public class RegisterController {

    @Autowired
    private RegisterService registerService;

    @Autowired
    RegisterDao registerDao; //07일 입력함

    @InitBinder
    public void initBinder(WebDataBinder binder) {

    }


    @RequestMapping("/register")
    public String registerForm() {
        return "registerForm";
    }


    //    메인페이지에서 JOIN 카테고리 클릭 할 경우
//    @GetMapping("/register")
//    public String register(){
//
//        return"register";
//    }
//    회원가입 완료
    @PostMapping("/register/add")
    public String addMember(MemberDto memberDto) throws Exception {
        registerService.registerMember(memberDto);
        return "loginForm";
    }


//      아이디 중복체크

    @PostMapping("/register/idChk")
    public String registerIdCheck(MemberDto memberDto) throws Exception {
        int result = registerService.idCheck(memberDto);
        if (result == 0) {
            return "fail";
        } else {
            return "success";
        }
    }

}

