package com.hanssem.app.dto;

import java.sql.Timestamp;

public class specialPriceDto {
    private Integer special_product_number;
    private Timestamp special_product_end_date;
    private Integer special_product_discount;
    private Integer product_number;

    public specialPriceDto() {

    }

    public specialPriceDto(Integer special_product_number, Timestamp special_product_end_date, Integer special_product_discount, Integer product_number) {
        this.special_product_number = special_product_number;
        this.special_product_end_date = special_product_end_date;
        this.special_product_discount = special_product_discount;
        this.product_number = product_number;
    }

    @Override
    public String toString() {
        return "specialPriceDto{" +
                "special_product_number=" + special_product_number +
                ", special_product_end_date=" + special_product_end_date +
                ", special_product_discount=" + special_product_discount +
                ", product_number=" + product_number +
                '}';
    }

    public Integer getSpecial_product_number() {
        return special_product_number;
    }

    public void setSpecial_product_number(Integer special_product_number) {
        this.special_product_number = special_product_number;
    }

    public Timestamp getSpecial_product_end_date() {
        return special_product_end_date;
    }

    public void setSpecial_product_end_date(Timestamp special_product_end_date) {
        this.special_product_end_date = special_product_end_date;
    }

    public Integer getSpecial_product_discount() {
        return special_product_discount;
    }

    public void setSpecial_product_discount(Integer special_product_discount) {
        this.special_product_discount = special_product_discount;
    }

    public Integer getProduct_number() {
        return product_number;
    }

    public void setProduct_number(Integer product_number) {
        this.product_number = product_number;
    }
}
