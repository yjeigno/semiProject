package com.hanssem.app.dto;

import java.util.List;

public class PurchaseDto {
    private String product_name;
    private String product_size;
    private String product_color;
    private String product_price;
    private Integer product_amount;

    private List<PurchaseDto> purchaseDtoList;

    public List<PurchaseDto> getPurchaseDtoList() {
        return purchaseDtoList;
    }

    public void setPurchaseDtoList(List<PurchaseDto> purchaseDtoList) {
        this.purchaseDtoList = purchaseDtoList;
    }

    public PurchaseDto() {}

    public PurchaseDto(String product_name, String product_size, String product_color, String product_price, Integer product_amount) {
        this.product_name = product_name;
        this.product_size = product_size;
        this.product_color = product_color;
        this.product_price = product_price;
        this.product_amount = product_amount;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getProduct_size() {
        return product_size;
    }

    public void setProduct_size(String product_size) {
        this.product_size = product_size;
    }

    public String getProduct_color() {
        return product_color;
    }

    public void setProduct_color(String product_color) {
        this.product_color = product_color;
    }

    public String getProduct_price() {
        return product_price;
    }

    public void setProduct_price(String product_price) {
        this.product_price = product_price;
    }

    public Integer getProduct_amount() {
        return product_amount;
    }

    public void setProduct_amount(Integer product_amount) {
        this.product_amount = product_amount;
    }
}
