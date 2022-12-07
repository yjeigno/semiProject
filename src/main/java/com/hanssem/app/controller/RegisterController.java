package com.hanssem.app.controller;

import com.hanssem.app.dao.MemberDao;
import com.hanssem.app.dao.RegisterDao;
import com.hanssem.app.dto.MemberDto;
import com.hanssem.app.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller

public class RegisterController {

    @Autowired
    private RegisterService registerService;

    @Autowired
    @RequestMapping("/register")
    public String registerForm(){
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

            return "redirect:/";
        }

//        중복체크



    }
//
//    @ResponseBody
//    @RequestMapping(value = "/registerIdCheck", method = RequestMethod.POST)
//    public int registerIdCheck(MemberDto memberDto){
//        int result = service.registerIdCheck(memberDto);
//        return result;
//    }
//    @RequestMapping(value = "/register", method = RequestMethod.POST)
//    public String registerPost(MemberDto memberDto){
//        logger.info
//    }

