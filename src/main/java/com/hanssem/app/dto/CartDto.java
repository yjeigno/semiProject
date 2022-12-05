package com.hanssem.app.dto;

import java.sql.Timestamp;

public class CartDto {
    private Integer cart_number;
    private Integer member_number;
    private Integer count;

    public CartDto(){}

    public CartDto(Integer cart_number, Integer member_number, Integer count) {
        this.cart_number = cart_number;
        this.member_number = member_number;
        this.count = count;
    }

    public Integer getCart_number() {
        return cart_number;
    }

    public Integer getMember_number() {
        return member_number;
    }

    public Integer getCount() {
        return count;
    }

    public void setCart_number(Integer cart_number) {
        this.cart_number = cart_number;
    }

    public void setMember_number(Integer member_number) {
        this.member_number = member_number;
    }

    public void setCount(Integer count) {
        this.count = count;
    }


}
