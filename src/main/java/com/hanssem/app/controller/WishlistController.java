package com.hanssem.app.controller;

import com.hanssem.app.dto.ImageDto;
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
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/wishlist")
public class WishlistController {

    @Autowired
    private WishlistService wishlistService;

    @GetMapping("")
    public String wishlist(
            HttpServletRequest request,
            Model model, Integer product_number
    ) {
        HttpSession session = request.getSession();
        Integer member_number = (Integer) session.getAttribute("member_number");
        // 임시로 1번
        if (member_number == null) {
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

}
