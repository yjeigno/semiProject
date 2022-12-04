package com.hanssem.app.dto;

import java.sql.Timestamp;

public class SpecialPriceDto {
    private Integer special_product_number;
    private Timestamp special_product_end_date;
    private Integer special_product_discount;
    private Integer product_number;

    private ProductDto productDto;

    private ImageDto imageDto;

    private Double review_rank_average;
    private Integer review_count;

    private Integer wishFlag;




    public SpecialPriceDto() {

    }

    public SpecialPriceDto(Integer special_product_number, Timestamp special_product_end_date, Integer special_product_discount, Integer product_number) {
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

    public boolean getWishFlag() {
        return wishFlag == 1;
    }

    public void setWishFlag(Integer wishFlag) {
        this.wishFlag = wishFlag;
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

    public ProductDto getProductDto() {
        return productDto;
    }

    public void setProductDto(ProductDto productDto) {
        this.productDto = productDto;
    }

    public ImageDto getImageDto() {
        return imageDto;
    }

    public void setImageDto(ImageDto imageDto) {
        this.imageDto = imageDto;
    }

    public Double getReview_rank_average() {
        return review_rank_average;
    }

    public void setReview_rank_average(Double review_rank_average) {
        this.review_rank_average = review_rank_average;
    }

    public Integer getReview_count() {
        return review_count;
    }

    public void setReview_count(Integer review_count) {
        this.review_count = review_count;
    }
}
