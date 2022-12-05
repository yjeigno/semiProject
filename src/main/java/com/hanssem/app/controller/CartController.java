package com.hanssem.app.controller;

import com.hanssem.app.dto.CartItemDto;
import com.hanssem.app.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class CartController {

    @Autowired
    private CartService cartService;

//    @PostMapping ("/add/cartItem")
//    public int addCartItem(CartItemDto cartItemDto, HttpServletRequest request){
//        String memberId = (String) request.getAttribute("member_id");
//        int find = cartService.addCartItem(cartItemDto, memberId);
//        return find;
//    }

    //아이템 하나 가져오기
    @PostMapping ("/get/cartItem")
    public CartItemDto getCartItem(Integer cart_item_number){
        CartItemDto find = cartService.selectCartItem(cart_item_number);
        return find;
    }
    //아이템 전부 가져오기
    @PostMapping ("/get/cartItemList")
    public List<CartItemDto> getCartItemList(Integer cart_number){
        List<CartItemDto> findAll = cartService.selectCartItemList(cart_number);
        return findAll;
    }
    @PostMapping("/delete/cartItem")
    public int deleteCartItem (Integer cart_item_number){
        int delete = cartService.deleteCartItem(cart_item_number);
        return delete;
    }

}
