package com.hanssem.app.controller;

import com.hanssem.app.dto.MemberDto;
import com.hanssem.app.service.UserManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/mypage")
public class MyPageController {
    @Autowired
    UserManageService userManager;

    @GetMapping("/pwchecker")
    public String myPagePasswordCheck() throws Exception{

        return "ChkUserPw";
    }
    @PostMapping("/pwchecker")
    public String afterPwCheck(MemberDto member, HttpServletRequest request,
                               HttpServletResponse response, HttpSession session){
        String id = (String) session.getAttribute("member_id");
//        String id = "akrclsek1";
        String pw = member.getMember_pw();
        member.setMember_id(id);
        if(!userManager.checkUserPw(member)){
            request.setAttribute("msg", "비밀번호가 틀렸습니다.");
            request.setAttribute("url", "/mypage/pwchecker");
            return "alert";
        }
        Cookie pwCheckCookie = new Cookie("pwChk", "pass");
        pwCheckCookie.setPath("/");
        pwCheckCookie.setMaxAge(60*10);
        pwCheckCookie.setSecure(true);
        response.addCookie(pwCheckCookie);

        return "redirect:/mypage/mpMain";
    }
    @RequestMapping("/mpMain")
    public String myPageMain(HttpServletRequest request, HttpSession httpSession, Model m){
        if(!loginChk(request)){
            HttpSession session = request.getSession();
            session.setAttribute("toURL", request.getRequestURL());
            return "redirect:/login/login";
        }
        if(loginChk(request)){
            Cookie[] cookies = request.getCookies();
            for(Cookie cookie:cookies){
                if(cookie.getName().equals("pwChk")&&cookie.getValue().equals("pass")){
                    MemberDto user = userManager.getUserInfo((String) httpSession.getAttribute("member_id"));
                    m.addAttribute("user", user);

                    return "myPage";
                }
            }
        }

        return "redirect:/mypage/pwchecker";
    }

    @RequestMapping("/userInfo")
    public String myPageInfo(HttpSession session, Model m){
        String memberId = (String) session.getAttribute("member_id");
        MemberDto user = userManager.getUserInfo(memberId);

        user.setMember_id(memberId);

        m.addAttribute("user", user);
        return "userInfo";
    }
    @GetMapping("/withdraw")
    public String withdrawPage(){
        return "withdraw";
    }
    @PostMapping("/withdraw")
    public String withdrawMember(String member_pw, HttpSession session){
        MemberDto member = new MemberDto();
        member.setMember_pw(member_pw);
        member.setMember_id((String) session.getAttribute("member_id"));
        userManager.userWithdraw(member);


        return "redirect:/";
    }
    @PostMapping("/renewInfo.do")
    public @ResponseBody Long renewInfo(@RequestBody MemberDto memberInfo, HttpSession session){
        String member_id = (String) session.getAttribute("member_id");

        memberInfo.setMember_id(member_id);

        userManager.renewUserInfo(memberInfo);

        return 1l;
    }
    private boolean loginChk(HttpServletRequest request){
        HttpSession session = request.getSession();
        return session.getAttribute("member_id")!=null;
    }

}
