package com.hanssem.app.dto;

import java.sql.Timestamp;

public class MainDto {

    //    신상품 , 인기상품용
    private Integer product_number;

    private String product_name;

    private Integer product_price;

    private Timestamp product_register_date;

    private String product_content;

    private Integer product_status;

    private String product_class;

    private Integer category_code_number;

    private String product_tag;

    private String image_path;

    private ImageDto imageDto;



    //      인테리어 상품전용
    private Integer interior_number;

    private String interior_name;

    private String interior_content;

    private Timestamp interior_register_date;

    private String interior_image_path;

    private Integer interior_category_number;

    private String interior_cash;



    public MainDto() {

    }

    public MainDto(Integer product_number, String product_name, Integer product_price, Timestamp product_register_date, String product_content, Integer product_status, String product_class, Integer category_code_number, String product_tag, String image_path, ImageDto imageDto, Integer interior_number, String interior_name, String interior_content, Timestamp interior_register_date, String interior_image_path, Integer interior_category_number, String interior_cash) {
        this.product_number = product_number;
        this.product_name = product_name;
        this.product_price = product_price;
        this.product_register_date = product_register_date;
        this.product_content = product_content;
        this.product_status = product_status;
        this.product_class = product_class;
        this.category_code_number = category_code_number;
        this.product_tag = product_tag;
        this.image_path = image_path;
        this.imageDto = imageDto;
        this.interior_number = interior_number;
        this.interior_name = interior_name;
        this.interior_content = interior_content;
        this.interior_register_date = interior_register_date;
        this.interior_image_path = interior_image_path;
        this.interior_category_number = interior_category_number;
        this.interior_cash = interior_cash;
    }

    public String getImage_path() {
        return image_path;
    }

    public void setImage_path(String image_path) {
        this.image_path = image_path;
    }

    public ImageDto getImageDto() {
        return imageDto;
    }

    public void setImageDto(ImageDto imageDto) {
        this.imageDto = imageDto;
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

    public Timestamp getInterior_register_date() {
        return interior_register_date;
    }

    public void setInterior_register_date(Timestamp interior_register_date) {
        this.interior_register_date = interior_register_date;
    }

    public String getInterior_image_path() {
        return interior_image_path;
    }

    public void setInterior_image_path(String interior_image_path) {
        this.interior_image_path = interior_image_path;
    }

    public Integer getInterior_category_number() {
        return interior_category_number;
    }

    public void setInterior_category_number(Integer interior_category_number) {
        this.interior_category_number = interior_category_number;
    }

    public String getInterior_cash() {
        return interior_cash;
    }

    public void setInterior_cash(String interior_cash) {
        this.interior_cash = interior_cash;
    }

    @Override
    public String toString() {
        return "MainDto{" +
                "product_number=" + product_number +
                ", product_name='" + product_name + '\'' +
                ", product_price=" + product_price +
                ", product_register_date=" + product_register_date +
                ", product_content='" + product_content + '\'' +
                ", product_status=" + product_status +
                ", product_class='" + product_class + '\'' +
                ", category_code_number=" + category_code_number +
                ", product_tag='" + product_tag + '\'' +
                ", image_path='" + image_path + '\'' +
                ", imageDto=" + imageDto +
                ", interior_number=" + interior_number +
                ", interior_name='" + interior_name + '\'' +
                ", interior_content='" + interior_content + '\'' +
                ", interior_register_date=" + interior_register_date +
                ", interior_image_path='" + interior_image_path + '\'' +
                ", interior_category_number=" + interior_category_number +
                ", interior_cash='" + interior_cash + '\'' +
                '}';
    }
}
