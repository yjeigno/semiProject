package com.hanssem.app.service;

import com.hanssem.app.dao.CartDao;
import com.hanssem.app.dao.MemberDao;
import com.hanssem.app.dto.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

@Service
public class CartService {
//    @Autowired
//    private CartDao cartDao;
//
//    @Autowired
//    private MemberDao memberDao;
//
//
//    public int addCart(CartDto cartDto) {
//
//        cartDto.setMember_number(1);
//        cartDto.setCount(0);
//
//        return cartDao.addCart(cartDto);
//    }
//
//    public int addCartItem(CartItemDto cartItemDto, String memberId) throws Exception {
//        MemberDto findMember = memberDao.selectMember(memberId);
//
//        CartDto findCart = cartDao.selectCartByMemberId(findMember.getMember_id());
//        if (ObjectUtils.isEmpty(findCart)) {
//            CartDto newCart = new CartDto();
//            newCart.setCount(0);
//            newCart.setMember_number(findMember.getMember_number());
//            cartDao.addCart(newCart);
//        }
//
//
//
//        return cartDao.addCartItem(cartItemDto);
//    }
//
//
//    // 아이템 한 개 가져오기
//    public CartItemDto selectCartItem(Integer cart_item_number) {
//        return cartDao.selectOne(cart_item_number);
//    }
//
//    // 아이템 다 가져오기
//    public List<CartItemDto> selectCartItemList(Integer cart_number) {
//        return cartDao.selectList(cart_number);
//    }
//
//    // 아이템 삭제하기
//    public int deleteCartItem(Integer cart_item_number) {
//        return cartDao.deleteCartItem(cart_item_number);
//    }
//

}
