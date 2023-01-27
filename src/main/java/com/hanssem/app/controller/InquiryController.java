package com.hanssem.app.controller;

import com.hanssem.app.dao.MemberDao;
import com.hanssem.app.dto.*;
import com.hanssem.app.service.InquiryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.rmi.server.ExportException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/inquiryContents")
public class InquiryController {

    @Autowired
    MemberDao memberDao;

    @Autowired
    InquiryService inquiryService;

    /* 문의글 리스트 보여주기 */
    @GetMapping("/list")
    public String list(Model m, Integer page, Integer pageSize, HttpServletRequest request) {

        /** 로그인 아직 안한상태면 현재주소를 저장해서 로그인 페이지에 같이 보내기 */
        HttpSession session = request.getSession();
        if(!loginChk(request)) {
            session.setAttribute("toURL", request.getRequestURL());
            return "redirect:/login/login";
        }

        try {
            // 이건 매개변수 타입을 Integer 로 했을때 사용 가능
            if(page==null) page = 1;
            if(pageSize==null) pageSize = 5;


            // 종 게시물 개수 구해서
            int totalCount = inquiryService.getCount();
            // 페이징 계산
            PageHandler pageHandler = new PageHandler(totalCount, page, pageSize);

            // 페이징 계산 끝난 결과를 출력
            // boardMapper.xml 에 <select id="selectPage"> 부분에 값 보내서
            // 몇번째 부터 몇번째 까지 글을 긁어올건지 결정
            Map map = new HashMap();
            map.put("member_id", session.getAttribute("member_id"));
            map.put("offset", (page-1)*pageSize);
            map.put("pageSize", pageSize);

            List<InquiryDto> list = inquiryService.getPage(map);
            // 이렇게 하면 최근 글 10개 가져온다.
            // view에 넘길거니까 모델에 담아서 보낸다.
            m.addAttribute("list", list);
            m.addAttribute("ph", pageHandler);

            System.out.println("list: " + list);

            return "inquiryContentsList";

        } catch (Exception e) {
            e.printStackTrace();
            return "0";
        }
    }

    /* 문의하기 (화면만 보여주는거) 버튼 누르고, 글쓰기 페이지 들어갈때. */
    @GetMapping("/write")
    public String write(Model m, HttpServletRequest request) throws Exception {
        HttpSession session = request.getSession();
        String member_id = (String) session.getAttribute("member_id");
        MemberDto memberDto = memberDao.selectMember(member_id);
        m.addAttribute("mode","write");
        m.addAttribute("memberDto",memberDto);
        return "inquiryContents";
    }

    /* 글쓰기 */
    @PostMapping("/write")
    public String write(InquiryDto inquiryDto, HttpSession session, Model m) {
        try {
            String member_id = (String) session.getAttribute("member_id");
            MemberDto memberDto = memberDao.selectMember(member_id);
            m.addAttribute("memberDto",memberDto);
            inquiryDto.setMember_id(member_id);
            int rowCount = inquiryService.write(inquiryDto);

            return "redirect:/inquiryContents/list";

        } catch (Exception e) {
            e.printStackTrace();

            m.addAttribute("inquiryDto", inquiryDto);
            return "inquiryContents/list";
        }
    }

    @GetMapping("/detail")
    public String detail(Model m, HttpServletRequest request, @RequestParam Integer qna_number) throws Exception {
        HttpSession session = request.getSession();
        String member_id = (String) session.getAttribute("member_id");
        MemberDto memberDto = memberDao.selectMember(member_id);
        InquiryDto inquiryDto = inquiryService.detail(qna_number);

        m.addAttribute("mode","detail");
        m.addAttribute("memberDto",memberDto);
        m.addAttribute("inquiryDto",inquiryDto);

        return "inquiryContents";
    }

    /* 글수정 */
    @GetMapping("/update")
    public String update(Model m, HttpServletRequest request, Integer qna_number) throws Exception {
        HttpSession session = request.getSession();
        String member_id = (String) session.getAttribute("member_id");
        MemberDto memberDto = memberDao.selectMember(member_id);
        InquiryDto inquiryDto = inquiryService.detail(qna_number);
        m.addAttribute("mode","update");
        m.addAttribute("memberDto",memberDto);
        m.addAttribute("inquiryDto",inquiryDto);

        return "inquiryContents";
    }

    @PostMapping("/update")
    public String update(InquiryUpdateDto dto, HttpSession session, RedirectAttributes re) {
        String member_id = (String) session.getAttribute("member_id");
        String redirectUrl = "redirect:/inquiryContents/detail";
        re.addAttribute("qna_number",dto.getQna_number());
        // InquiryUpdateDto를 클라이언트한테 받아서  > 컨트롤러 > 서비스 > dao > mapper 순서로 전달한 후
        // mapper에서 성공 실패 여부만 확인해서 리스폰스 처리한다
        try{
            MemberDto memberDto = memberDao.selectMember(member_id);
            inquiryService.update(dto);

            return redirectUrl;
        }catch (Exception e){
            e.printStackTrace();
            // 에러메시지 클라이언트한테 제공
            return redirectUrl;
        }
    }

    @DeleteMapping("/delete/{qnaNumber}")
    public ResponseEntity<String> delete(HttpSession session, @PathVariable Integer qnaNumber) {
        String member_id = (String) session.getAttribute("member_id");

        try{
            MemberDto memberDto = memberDao.selectMember(member_id);
            inquiryService.delete(qnaNumber);

            return new ResponseEntity<>("success delete.", HttpStatus.OK);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseEntity<>("fail delete.", HttpStatus.OK);
        }
    }

    private boolean loginChk(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return session.getAttribute("member_id") != null; // 세션통에 id가 있다
        // 로그인 한 상태면 true, 아니면 false;
    }
}
