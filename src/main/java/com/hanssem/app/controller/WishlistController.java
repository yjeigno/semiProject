package com.hanssem.app.controller;

import com.hanssem.app.dto.WishlistDto;
import com.hanssem.app.dto.WishlistPostDto;
import com.hanssem.app.service.WishlistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;


@Controller
@RequestMapping("/wishlist")
public class WishlistController {

    @Autowired
    private WishlistService wishlistService;

    @GetMapping("")
    public String wishlist(HttpServletRequest request, HttpServletResponse response, Model model, Integer product_number) throws IOException {
        HttpSession session = request.getSession();
        Integer member_number = (Integer) session.getAttribute("member_number");
        // 임시로 1번
        if (member_number == null) {
/*          PrintWriter out = response.getWriter();
            out.println("<script>");
            out.println("alert('로그인 후 이용 가능 합니다.')");
            out.println("history.back()");
            out.println("</script>");
            out.flush();*/
            member_number = 1;
        }

        WishlistDto wishlistDto = new WishlistDto();
        wishlistDto.setProduct_number(product_number);
        wishlistDto.setMember_number(member_number);

        model.addAttribute("list", wishlistService.select(wishlistDto));

        return "wishlist";
    }

    @PostMapping("/")
    public ResponseEntity<String> wishPost(HttpServletRequest request, @RequestBody WishlistPostDto dto) {
        HttpSession session = request.getSession();
        Integer memberNumber = (Integer) session.getAttribute("member_number");
        // 임시로 1번
        if (memberNumber == null) {
            memberNumber = 1;
        }

        wishlistService.wishlistWork(memberNumber,dto);


       return new ResponseEntity<>("", HttpStatus.OK);
    }

    @DeleteMapping("/flush")
    public ResponseEntity<String> flush(HttpServletRequest request) {
        HttpSession session = request.getSession();
        Integer memberNumber = (Integer) session.getAttribute("member_number");
        // 임시로 1번
        if (memberNumber == null) {
            memberNumber = 1;
        }

        wishlistService.deleteAllWishlist(memberNumber);


        return new ResponseEntity<>("", HttpStatus.OK);
    }
}
