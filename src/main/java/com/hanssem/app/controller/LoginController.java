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


    // /login/login > 로그인 페이지 나오게 하는 용도
    @GetMapping("/login")
    public String loginForm(){
        return "loginForm";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session){

        // 1. 세션종료 하기
        session.invalidate();

        // 2. 메인화면 이동
        return "redirect:/";
    }


    // ID / PW 입력 로그인
    @PostMapping("/login")
    public String login(MemberLoginDto memberLogin,
                        HttpServletRequest request,
                        HttpServletResponse response) throws Exception {

        System.out.println(("입력 ID : " + memberLogin.getMember_id() + ", 입력 PW : "+ memberLogin.getMember_pw()));

        String id = memberLogin.getMember_id();
        String pw = memberLogin.getMember_pw();
//        Boolean rememberId = memberLogin.isRememberId();


//        일치 하는 id, pw 없는경우
        if (!loginChk(id, pw)){

            String msg = URLEncoder.encode("일치하는 정보가 없습니다.","UTF-8");
            return "redirect:/login/login?msg="+msg;
        }

//            로그인 시도하는 사용자가 입력한 id / pw가 있는경우

//        세션: 로그인 유지
        HttpSession session = request.getSession();
//        아이디 저장
        session.setAttribute("member_id", id);

//        쿠키: id 로그인창 기억


        Cookie cookie = new Cookie("member_id", id);
//        if (!rememberId){
//            cookie.setMaxAge(0);//쿠키 삭제
//        }
        response.addCookie(cookie);

        /* 3. 홈으로 이동 */
//		loginForm 에서 넘어온 주소값(toURL) 을 redirect 경로에 넣어준다
//		그냥 넣을순 없고 넘어오는거니까 일단 매개변수에 String toURL 을 넣고 여기서 가져다 쓰자

        // 세션에 curr_url 있으면 거기로 링크 이동시킬거임
        /** String toURL = (String) session.getAttribute("toURL"); */
//		StringBuffer 를 String 으로 형변환 해야 하는데, 위 방식으로는 할 수 없다.
//		그래서 모든 타입을 문자열로 바꿀수 있는 valueOf 메서드로 형변환 한다.

        String toURL = String.valueOf(session.getAttribute("toURL"));
        toURL= toURL==null || toURL=="null" || toURL.equals("") ? "/": toURL;
        return "redirect:"+toURL;


    }
    //      DB 내 id pw 정보 있는지 확인하는 메서드
    private boolean loginChk(String member_id, String member_pw) throws Exception {
        MemberDto memberDto = memberDao.selectMember(member_id);
        if(memberDto == null) return false;
        return memberDto.getMember_pw().equals(member_pw); //비밀번호 동일한지


    }



}
