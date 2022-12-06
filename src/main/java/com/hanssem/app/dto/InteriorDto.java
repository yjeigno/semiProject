package com.hanssem.app.dto;

import java.sql.Timestamp;

public class InteriorDto {

    private Integer interior_number;

    private String interior_name;

    private String interior_content;

    private Timestamp interior_register_date;

    private String interior_image_path;

    private Integer interior_category_number;

    private String interior_cash;

    public InteriorDto(String interior_cash) {
        this.interior_cash = interior_cash;
    }

    public String getInterior_cash() {
        return interior_cash;
    }

    public Integer getInterior_category_number() {
        return interior_category_number;
    }

    public void setInterior_category_number(Integer interior_category_number) {
        this.interior_category_number = interior_category_number;
    }

    public InteriorDto(){}


    public InteriorDto(Integer interior_number, String interior_name, String interior_content, Timestamp interior_register_date, String interior_image_path, Integer interior_category_number,String interior_cash) {
        this.interior_number = interior_number;
        this.interior_name = interior_name;
        this.interior_content = interior_content;
        this.interior_register_date = interior_register_date;
        this.interior_image_path = interior_image_path;
        this.interior_category_number = interior_category_number;
        this.interior_cash = interior_cash;

    }

    @Override
    public String toString() {
        return "interiorDto{" + "interior_number=" + interior_number +
                ", interior_name=" + interior_name +
                ", interior_content=" + interior_content +
                ", interior_register_date=" + interior_register_date +
                ", interior_image_path=" + interior_image_path +
                '}';
    }

    public Integer getInterior_number() {return interior_number;}

    public void setInterior_number(Integer interior_number){
        this.interior_number = interior_number;
    }

    public String getInterior_name() {return interior_name;}

    public void setInterior_name(String interior_name){
        this.interior_name = interior_name;
    }

    public String getInterior_content() {return interior_content;}

    public void setInterior_content(String interior_content){
        this.interior_content = interior_content;
    }

    public Timestamp getInterior_register_date(){return interior_register_date;}

    public void setInterior_register_date(Timestamp interior_register_date){
        this.interior_register_date = interior_register_date;
    }

    public String getInterior_image_path() {return interior_image_path;}

    public void setInterior_image_path(String interior_image_path){
        this.interior_image_path = interior_image_path;
    }

}
