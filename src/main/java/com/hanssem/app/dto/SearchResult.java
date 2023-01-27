package com.hanssem.app.dto;

import java.sql.Timestamp;

public class SearchResult {
    private Integer product_number;
    private String product_content;
    private Integer product_price;
    private Timestamp product_register_date;
    private Integer category_code_number;
    private String category_code_name;
    private String image_path;
    private Double review_rank;
    private Integer review_count;
    private Integer product_status; //상태:0(매진)1(판매)2(할인)
    private Integer product_sales; //판매량
    private Integer discount_rate;

    public SearchResult() {
    }


    public Integer getProduct_number() {
        return product_number;
    }

    public void setProduct_number(Integer product_number) {
        this.product_number = product_number;
    }

    public String getProduct_content() {
        return product_content;
    }

    public void setProduct_content(String product_content) {
        this.product_content = product_content;
    }

    public Integer getProduct_price() {
        return product_price;
    }

    public void setProduct_price(Integer product_price) {
        this.product_price = product_price;
    }

    public Timestamp getProduct_register_date() {
        return product_register_date;
    }

    public void setProduct_register_date(Timestamp product_register_date) {
        this.product_register_date = product_register_date;
    }

    public Integer getCategory_code_number() {
        return category_code_number;
    }

    public void setCategory_code_number(Integer category_code_number) {
        this.category_code_number = category_code_number;
    }

    public String getCategory_code_name() {
        return category_code_name;
    }

    public void setCategory_code_name(String category_code_name) {
        this.category_code_name = category_code_name;
    }

    public String getImage_path() {
        return image_path;
    }

    public void setImage_path(String image_path) {
        this.image_path = image_path;
    }

    public Double getReview_rank() {
        return review_rank;
    }

    public void setReview_rank(Double review_rank) {
        this.review_rank = review_rank;
    }

    public Integer getReview_count() {
        return review_count;
    }

    public void setReview_count(Integer review_count) {
        this.review_count = review_count;
    }

    public Integer getProduct_status() {
        return product_status;
    }

    public void setProduct_status(Integer product_status) {
        this.product_status = product_status;
    }

    public Integer getProduct_sales() {
        return product_sales;
    }

    public void setProduct_sales(Integer product_sales) {
        this.product_sales = product_sales;
    }

    public Integer getDiscount_rate() {
        return discount_rate;
    }

    public void setDiscount_rate(Integer discount_rate) {
        this.discount_rate = discount_rate;
    }

    @Override
    public String toString() {
        return "SearchResult{" +
                "product_number=" + product_number +
                ", product_content='" + product_content + '\'' +
                ", product_price=" + product_price +
                ", product_register_date=" + product_register_date +
                ", category_code_number=" + category_code_number +
                ", category_code_name='" + category_code_name + '\'' +
                ", image_path='" + image_path + '\'' +
                ", review_rank=" + review_rank +
                ", review_count=" + review_count +
                ", product_status=" + product_status +
                ", product_sales=" + product_sales +
                ", discount_rate=" + discount_rate +
                '}';
    }
}
