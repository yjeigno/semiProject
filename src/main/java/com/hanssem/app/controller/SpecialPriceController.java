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
        String member_id = (String) session.getAttribute("member_id");
        Integer member_number = wishlistService.getMemberNumber(member_id);

        List<SpecialPriceDto> list = specialPriceService.selectSpecialPrice(product_number);
        for (SpecialPriceDto dto : list) {
            int productNumber = dto.getProduct_number();
            WishlistDto wishlistDto = new WishlistDto();
            if (member_number != null) {
                wishlistDto.setMember_number(member_number);
            }
            wishlistDto.setProduct_number(productNumber);
            List<WishlistDto> wishlistDtos = wishlistService.select(wishlistDto);
            if (!wishlistDtos.isEmpty()) {
                dto.setWishFlag(1);
            } else {
                dto.setWishFlag(0);
            }
        }

        model.addAttribute("list", list);

        return "specialPrice";

    }


}
