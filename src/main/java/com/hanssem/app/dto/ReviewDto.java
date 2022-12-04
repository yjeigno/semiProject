package com.hanssem.app.dto;

import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Timestamp;

public class ReviewDto {
    private Integer review_number;
    private String review_content;
    private Integer review_rank;
    private Integer review_status;
    private Timestamp review_register_date;
    private Integer member_number;
    private Integer product_number;
    private String review_image;
    private String review_size;
    private String review_color;
    private ProductDto productDto;
    private MemberDto memberDto;

    public ReviewDto(Integer review_number, String review_content, Integer review_rank, Integer review_status, Timestamp review_register_date, Integer member_number, Integer product_number, String review_image, String review_size, String review_color, ProductDto productDto, MemberDto memberDto) {
        this.review_number = review_number;
        this.review_content = review_content;
        this.review_rank = review_rank;
        this.review_status = review_status;
        this.review_register_date = review_register_date;
        this.member_number = member_number;
        this.product_number = product_number;
        this.review_image = review_image;
        this.review_size = review_size;
        this.review_color = review_color;
        this.productDto = productDto;
        this.memberDto = memberDto;
    }

    public String getReview_image() {
        return review_image;
    }

    public void setReview_image(String review_image) {
        this.review_image = review_image;
    }

    public String getReview_size() {
        return review_size;
    }

    public void setReview_size(String review_size) {
        this.review_size = review_size;
    }

    public String getReview_color() {
        return review_color;
    }

    public void setReview_color(String review_color) {
        this.review_color = review_color;
    }

    public ProductDto getProductDto() {
        return productDto;
    }

    public void setProductDto(ProductDto productDto) {
        this.productDto = productDto;
    }

    public MemberDto getMemberDto() {
        return memberDto;
    }

    public void setMemberDto(MemberDto memberDto) {
        this.memberDto = memberDto;
    }

    public ReviewDto() {}

    public Integer getReview_number() {
        return review_number;
    }

    public void setReview_number(Integer review_number) {
        this.review_number = review_number;
    }

    public String getReview_content() {
        return review_content;
    }

    public void setReview_content(String review_content) {
        this.review_content = review_content;
    }

    public Integer getReview_rank() {
        return review_rank;
    }

    public void setReview_rank(Integer review_rank) {
        this.review_rank = review_rank;
    }

    public Integer getReview_status() {
        return review_status;
    }

    public void setReview_status(Integer review_status) {
        this.review_status = review_status;
    }

    public Timestamp getReview_register_date() {
        return review_register_date;
    }

    public void setReview_register_date(Timestamp review_register_date) {
        this.review_register_date = review_register_date;
    }

    public Integer getMember_number() {
        return member_number;
    }

    public void setMember_number(Integer member_number) {
        this.member_number = member_number;
    }

    public Integer getProduct_number() {
        return product_number;
    }

    public void setProduct_number(Integer product_number) {
        this.product_number = product_number;
    }
}
