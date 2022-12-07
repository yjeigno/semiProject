package com.hanssem.app.dto;

import java.sql.Timestamp;

public class MainDto {
    private Integer product_number;

    private String product_name ;

    private String product_content;

    private Integer product_price;

    private Timestamp product_register_date;

    private Integer interior_number;

    private String interior_name;

    private String interior_content;

    private String interior_image_path;


    public MainDto(){

    }

    public MainDto(Integer product_number, String product_name, String product_content, Integer product_price, Timestamp product_register_date, Integer interior_number, String interior_name, String interior_content, String interior_image_path) {
        this.product_number = product_number;
        this.product_name = product_name;
        this.product_content = product_content;
        this.product_price = product_price;
        this.product_register_date = product_register_date;
        this.interior_number = interior_number;
        this.interior_name = interior_name;
        this.interior_content = interior_content;
        this.interior_image_path = interior_image_path;
    }

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

    public Integer getInterior_number() {
        return interior_number;
    }

    public void setInterior_number(Integer interior_number) {
        this.interior_number = interior_number;
    }

    public String getInterior_name() {
        return interior_name;
    }

    public void setInterior_name(String interior_name) {
        this.interior_name = interior_name;
    }

    public String getInterior_content() {
        return interior_content;
    }

    public void setInterior_content(String interior_content) {
        this.interior_content = interior_content;
    }

    public String getInterior_image_path() {
        return interior_image_path;
    }

    public void setInterior_image_path(String interior_image_path) {
        this.interior_image_path = interior_image_path;
    }

    @Override
    public String toString() {
        return "MainDto{" +
                "product_number=" + product_number +
                ", product_name='" + product_name + '\'' +
                ", product_content='" + product_content + '\'' +
                ", product_price=" + product_price +
                ", product_register_date=" + product_register_date +
                ", interior_number=" + interior_number +
                ", interior_name='" + interior_name + '\'' +
                ", interior_content='" + interior_content + '\'' +
                ", interior_image_path='" + interior_image_path + '\'' +
                '}';
    }
}
