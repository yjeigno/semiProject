package com.hanssem.app.dto;

public class WishProduct {
    private Integer product_number;

    public WishProduct() {
    }

    public WishProduct(Integer product_number) {
        this.product_number = product_number;
    }

    public Integer getProduct_number() {
        return product_number;
    }

    public void setProduct_number(Integer product_number) {
        this.product_number = product_number;
    }

    @Override
    public String toString() {
        return "WishProduct{" +
                "product_number=" + product_number +
                '}';
    }
}
