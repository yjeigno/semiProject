package com.hanssem.app.controller;

import com.hanssem.app.dto.MemberDto;
import com.hanssem.app.service.UserManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;

@Controller
@RequestMapping("/mypage")
public class MyPageController {
    @Autowired
    UserManageService userManager;

    @GetMapping("/pwchecker")
    public String myPagePasswordCheck(MemberDto member, HttpServletRequest request,
                                      HttpServletResponse response, HttpSession session) throws Exception{


        return "ChkUserPw";
    }
    @PostMapping("/pwchecker")
    public String afterPwCheck(MemberDto member, HttpServletRequest request,
                               HttpServletResponse response, HttpSession session){
//        String id = (String) session.getAttribute("id");
        String id = "akrclsek1";
        String pw = member.getMember_pw();
        member.setMember_id(id);
        if(!userManager.checkUserPw(member)){
            request.setAttribute("msg", "비밀번호가 틀렸습니다.");
            request.setAttribute("url", "/mypage/pwchecker");
            return "alert";
        }
        Cookie cookie = new Cookie("pwChk", "pass");
        cookie.setDomain("localhost:8080");
        cookie.setPath("/");
        cookie.setMaxAge(60*10);
        cookie.setSecure(true);
        response.addCookie(cookie);

        return "redirect:/mypage/mpMain";
    }
    @RequestMapping("/mpMain")
    public String myPageMain(HttpServletRequest request){
        if(!loginChk(request)){
            HttpSession session = request.getSession();
            session.setAttribute("toURL", request.getRequestURL());
            return "redirect:/login_register";
        }
        if(loginChk(request)){
            Cookie[] cookies = request.getCookies();
            for(Cookie cookie:cookies){
                if(cookie.getName().equals("pwChk")&&cookie.getValue().equals("pass")){
                    return "myPage";
                }
            }
        }

        return "redirect:/mypage/pwchecker";
    }

    @GetMapping("/withdraw")
    public String withdrawPage(){
        return "withdraw";
    }
    private boolean loginChk(HttpServletRequest request){
        HttpSession session = request.getSession();
        return session.getAttribute("id")!=null;
    }

    private boolean pwChk(String id, String pw) throws SQLException{
        MemberDto member;

        return true;
    }
}
