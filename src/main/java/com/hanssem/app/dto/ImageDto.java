package com.hanssem.app.dto;

import java.sql.Timestamp;

public class ImageDto {
    private Integer image_number;
    private String image_path;
    private String image_file_name;
    private String image_rename_file_name;
    private String image_code_number;
    private Timestamp image_register_date;
    private Integer product_number;

    public ImageDto() {}

    public ImageDto(Integer image_number, String image_path, String image_file_name, String image_rename_file_name, String image_code_number, Timestamp image_register_date, Integer product_number) {
        this.image_number = image_number;
        this.image_path = image_path;
        this.image_file_name = image_file_name;
        this.image_rename_file_name = image_rename_file_name;
        this.image_code_number = image_code_number;
        this.image_register_date = image_register_date;
        this.product_number = product_number;
    }

    public Integer getImage_number() {
        return image_number;
    }

    public void setImage_number(Integer image_number) {
        this.image_number = image_number;
    }

    public String getImage_path() {
        return image_path;
    }

    public void setImage_path(String image_path) {
        this.image_path = image_path;
    }

    public String getImage_file_name() {
        return image_file_name;
    }

    public void setImage_file_name(String image_file_name) {
        this.image_file_name = image_file_name;
    }

    public String getImage_rename_file_name() {
        return image_rename_file_name;
    }

    public void setImage_rename_file_name(String image_rename_file_name) {
        this.image_rename_file_name = image_rename_file_name;
    }

    public String getImage_code_number() {
        return image_code_number;
    }

    public void setImage_code_number(String image_code_number) {
        this.image_code_number = image_code_number;
    }

    public Timestamp getImage_register_date() {
        return image_register_date;
    }

    public void setImage_register_date(Timestamp image_register_date) {
        this.image_register_date = image_register_date;
    }

    public Integer getProduct_number() {
        return product_number;
    }

    public void setProduct_number(Integer product_number) {
        this.product_number = product_number;
    }

    @Override
    public String toString() {
        return "ImageDto{" +
                "image_number=" + image_number +
                ", image_path='" + image_path + '\'' +
                ", image_file_name='" + image_file_name + '\'' +
                ", image_rename_file_name='" + image_rename_file_name + '\'' +
                ", image_code_number='" + image_code_number + '\'' +
                ", image_register_date=" + image_register_date +
                ", product_number=" + product_number +
                '}';
    }
}
