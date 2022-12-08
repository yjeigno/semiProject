package com.hanssem.app.dto;

public class InteriordetailDto {

    private Integer interior_product_number;

    private Integer interior_number;

    private Integer product_number;



    public InteriordetailDto() {
    }

    public InteriordetailDto(Integer interior_product_number, Integer interior_number, Integer product_number) {
        this.interior_product_number = interior_product_number;
        this.interior_number = interior_number;
        this.product_number = product_number;
    }

    @Override
    public String toString() {
        return "InteriordetailDto{" +
                "interior_product_number=" + interior_product_number +
                ", interior_number=" + interior_number +
                ", product_number=" + product_number +
                '}';
    }

    public Integer getInterior_product_number() {
        return interior_product_number;
    }

    public void setInterior_product_number(Integer interior_product_number) {
        this.interior_product_number = interior_product_number;
    }

    public Integer getInterior_number() {
        return interior_number;
    }

    public void setInterior_number(Integer interior_number) {
        this.interior_number = interior_number;
    }

    public Integer getProduct_number() {
        return product_number;
    }

    public void setProduct_number(Integer product_number) {
        this.product_number = product_number;
    }
}