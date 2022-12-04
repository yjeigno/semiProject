package com.hanssem.app.dto;

import java.sql.Timestamp;

public class ProductDto {
    private Integer product_number;
    private String product_name;
    private Integer product_price;
    private Timestamp product_register_date;
    private String product_content;
    private Integer product_status;
    private String product_class;
    private Integer category_code_number;
    private String product_tag;

    public ProductDto(Integer product_number, String product_name, Integer product_price, Timestamp product_register_date, String product_content, Integer product_status, String product_class, Integer category_code_number, String product_tag) {
        this.product_number = product_number;
        this.product_name = product_name;
        this.product_price = product_price;
        this.product_register_date = product_register_date;
        this.product_content = product_content;
        this.product_status = product_status;
        this.product_class = product_class;
        this.category_code_number = category_code_number;
        this.product_tag = product_tag;
    }
    public ProductDto() {}

    public Integer getProduct_number() {
        return product_number;
    }

    public void setProduct_number(Integer product_number) {
        this.product_number = product_number;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
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

    public String getProduct_content() {
        return product_content;
    }

    public void setProduct_content(String product_content) {
        this.product_content = product_content;
    }

    public Integer getProduct_status() {
        return product_status;
    }

    public void setProduct_status(Integer product_status) {
        this.product_status = product_status;
    }

    public String getProduct_class() {
        return product_class;
    }

    public void setProduct_class(String product_class) {
        this.product_class = product_class;
    }

    public Integer getCategory_code_number() {
        return category_code_number;
    }

    public void setCategory_code_number(Integer category_code_number) {
        this.category_code_number = category_code_number;
    }

    public String getProduct_tag() {
        return product_tag;
    }

    public void setProduct_tag(String product_tag) {
        this.product_tag = product_tag;
    }

    @Override
    public String toString() {
        return "ProductDto{" +
                "product_number=" + product_number +
                ", product_name='" + product_name + '\'' +
                ", product_price=" + product_price +
                ", product_register_date=" + product_register_date +
                ", product_content='" + product_content + '\'' +
                ", product_status=" + product_status +
                ", product_class='" + product_class + '\'' +
                ", category_code_number=" + category_code_number +
                ", product_tag='" + product_tag + '\'' +
                '}';
    }
}
