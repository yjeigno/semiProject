package com.hanssem.app.controller;

import com.hanssem.app.dao.MemberDao;
import com.hanssem.app.dto.MemberDto;
import com.hanssem.app.dto.MemberLoginDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.URLEncoder;
import java.net.http.HttpResponse;
import java.sql.SQLException;

@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    MemberDao memberDao;
    // 메인 > 로그인 버튼 이동
    @GetMapping("/login")
    public String loginForm(){
        return "login";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session){
        // 세션종료 하기
        session.invalidate();
        // 메인화면 이동
        return "redirect:/hanssem";
    }

    // ID / PW 입력 로그인
    @PostMapping("/login")
    public String login(MemberLoginDto memberLogin,
                        HttpServletRequest request,
                        HttpServletResponse response) throws Exception {

        System.out.println(("입력 ID : " + memberLogin.getMember_id() + ", 입력 PW : "+ memberLogin.getMember_pw()));

        String id = memberLogin.getMember_id();
        String pw = memberLogin.getMember_pw();
        boolean rememberId =memberLogin.isRememberId();

//        DB내 아이디 비번 있는지 확인
//        일치 하는 id, pw 없는경우
        if (!loginChk(id, pw)){

            String msg = URLEncoder.encode("일치하는 정보가 없습니다.","UTF-8");
            return "redirect:/login?msg="+msg;
        }
//            로그인 시도하는 사용자가 입력한 id / pw가 있는경우
//        세션: 로그인 유지
        HttpSession session = request.getSession();
//        아이디 저장
        session.setAttribute("member_id",id);

//        쿠키: id 로그인창 기억
        Cookie cookie = new Cookie("member_id",id);
        if (!rememberId){
            cookie.setMaxAge(0);//쿠키 삭제
        }
        response.addCookie(cookie);

        String toURL = String.valueOf(session.getAttribute("toURL"));
        toURL= toURL==null || toURL=="null" || toURL.equals("") ? "/": toURL;
        return "redirect:"+toURL;


    }

    private boolean loginChk(String member_id, String member_pw) throws Exception{
        MemberDto member = memberDao.selectMember(member_id, member_pw);
        if(member == null) return false;
        return member.getMember_pw().equals(member_pw);


    }


    
}
