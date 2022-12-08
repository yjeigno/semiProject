package com.hanssem.app.controller;

import com.hanssem.app.dto.WishlistDto;
import com.hanssem.app.dto.WishlistPostDto;
import com.hanssem.app.service.UserManageService;
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
import java.util.List;


@Controller
@RequestMapping("/wishlist")
public class WishlistController {

    @Autowired
    private WishlistService wishlistService;

    @Autowired
    private UserManageService userService;


    @GetMapping("")
    public String wishlist(HttpServletRequest request, HttpServletResponse response, Model model, Integer product_number) throws IOException {
        HttpSession session = request.getSession();
        String member_id = (String)session.getAttribute("member_id");
        Integer member_number = wishlistService.getMemberNumber(member_id);

        WishlistDto wishlistDto = new WishlistDto();
        wishlistDto.setProduct_number(product_number);
        wishlistDto.setMember_number(member_number);

        List<WishlistDto> list = wishlistService.select(wishlistDto);
        model.addAttribute("list", list);

        return "wishlist";
    }

    @PostMapping("/")
    public ResponseEntity<String> wishPost(HttpServletRequest request, @RequestBody WishlistPostDto dto) {
        HttpSession session = request.getSession();
        String member_id = (String) session.getAttribute("member_id");
        Integer member_number = wishlistService.getMemberNumber(member_id);


        wishlistService.wishlistWork(member_number, dto);


       return new ResponseEntity<>("", HttpStatus.OK);
    }

    @DeleteMapping("/flush")
    public ResponseEntity<String> flush(HttpServletRequest request) {
        HttpSession session = request.getSession();
        String memberId = (String) session.getAttribute("member_id");
        Integer memberNumber = userService.getUserNo(memberId);

        wishlistService.deleteAllWishlist(memberNumber);


        return new ResponseEntity<>("", HttpStatus.OK);
    }

    @DeleteMapping("/partial-delete/{productNumbers}")
    public ResponseEntity<String> partialDelete(HttpServletRequest request,@PathVariable List<Integer> productNumbers) {
        HttpSession session = request.getSession();
        String memberId = (String) session.getAttribute("member_id");
        Integer memberNumber = userService.getUserNo(memberId);

        wishlistService.partialDelete(productNumbers,memberNumber);


        return new ResponseEntity<>("", HttpStatus.OK);
    }

}
