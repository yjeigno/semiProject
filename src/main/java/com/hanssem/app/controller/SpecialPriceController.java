package com.hanssem.app.controller;

import com.hanssem.app.dto.SpecialPriceDto;
import com.hanssem.app.dto.WishlistDto;
import com.hanssem.app.service.SpecialPriceService;
import com.hanssem.app.service.WishlistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
public class SpecialPriceController {

    @Autowired
    private SpecialPriceService specialPriceService;

    @Autowired
    private WishlistService wishlistService;

    @GetMapping("/specialPrice")
    public String specialPrice(Model model, Integer product_number ,HttpServletRequest request) {
        HttpSession session = request.getSession();
        Integer member_number = (Integer) session.getAttribute("member_number");
        // 임시로 1번
        if (member_number == null) {
            member_number = 1;
        }

        List<SpecialPriceDto> list = specialPriceService.selectSpecialPrice(product_number);
        if (member_number != null) {
            for (SpecialPriceDto dto : list) {
                int productNumber = dto.getProduct_number();
                WishlistDto wishlistDto = new WishlistDto();
                wishlistDto.setMember_number(member_number);
                wishlistDto.setProduct_number(productNumber);
                List<WishlistDto> wishlistDtos = wishlistService.select(wishlistDto);
                if (!wishlistDtos.isEmpty()) {
                    dto.setWishFlag(1);
                } else {
                    dto.setWishFlag(0);
                }
            }
        }

        model.addAttribute("list", list);

        return "specialPrice";

        // session.setA("login", id);

//        if(!loginChk(request)) {
//            HttpSession session = request.getSession();
//            session.setAttribute("toURL", request.getRequestURL());
//            return "redirect:/login/login";
//        }

    }


}
