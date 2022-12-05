package com.hanssem.app.dao;

import com.hanssem.app.dto.*;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CartDao {
    @Autowired
    private SqlSession session;

    private String cartPath="com.hanssem.app.dao.cartMapper.";

    public int addCart(CartDto cartDto) {
        return session.insert(cartPath+"insertCart",cartDto);
    }

    public int addCartItem(CartItemDto cartItemDto) {
        return session.insert(cartPath+"insertCartItem",cartItemDto);
    }


    public CartDto selectCartByMemberId(String memberId) {
        return session.selectOne(cartPath+"selectCart",memberId);
    }

    public CartItemDto selectOne(Integer cart_item_number) {
        return session.selectOne(cartPath+"selectCartItem",cart_item_number);
    }
    //장바구 추가하기
    public List<CartItemDto> selectList(Integer cart_number){
        return session.selectList(cartPath+"selectCartItemList",cart_number);
    }
    //장바구니 아이템 삭제하
    public int deleteCartItem(Integer cart_item_number){
        return session.delete(cartPath+"cartDelete",cart_item_number);
    }
}
