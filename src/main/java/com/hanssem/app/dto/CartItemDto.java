package com.hanssem.app.dto;

public class CartItemDto {

    private Integer cart_item_number;
    private Integer cart_number;
    private Integer product_number;
    private Integer count;

    private Integer image_number;

    private Integer size_code_number;

    private Integer color_code_number;


    public CartItemDto(Integer cart_item_number, Integer cart_number, Integer product_number, Integer count, Integer image_number, Integer size_code_number, Integer color_code_number) {
        this.cart_item_number = cart_item_number;
        this.cart_number = cart_number;
        this.product_number = product_number;
        this.count = count;
        this.image_number = image_number;
        this.size_code_number = size_code_number;
        this.color_code_number = color_code_number;
    }

    public Integer getCart_item_number() {
        return cart_item_number;
    }

    public Integer getCart_number() {
        return cart_number;
    }

    public Integer getProduct_number() {
        return product_number;
    }

    public Integer getCount() {
        return count;
    }

    public Integer getImage_number() {
        return image_number;
    }

    public void setImage_number(Integer image_number) {
        this.image_number = image_number;
    }

    public Integer getSize_code_number() {
        return size_code_number;
    }

    public void setSize_code_number(Integer size_code_number) {
        this.size_code_number = size_code_number;
    }

    public Integer getColor_code_number() {
        return color_code_number;
    }

    public void setColor_code_number(Integer color_code_number) {
        this.color_code_number = color_code_number;
    }

    public void setCart_item_number(Integer cart_item_number) {
        this.cart_item_number = cart_item_number;
    }

    public void setCart_number(Integer cart_number) {
        this.cart_number = cart_number;
    }

    public void setProduct_number(Integer product_number) {
        this.product_number = product_number;
    }

    public void setCount(Integer count) {
        this.count = count;
    }
}
