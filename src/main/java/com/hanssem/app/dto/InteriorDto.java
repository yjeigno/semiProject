package com.hanssem.app.dto;

import java.sql.Timestamp;

public class InteriorDto {

    private Integer interior_number;

    private String interior_name;

    private String interior_content;

    private Timestamp interior_register_date;

    private String interior_image_path;

    public InteriorDto(){}

    public InteriorDto(Integer interior_number, String interior_name, String interior_content, Timestamp interior_register_date,String interior_image_path){
        this.interior_number = interior_number;
        this.interior_name = interior_name;
        this.interior_content = interior_content;
        this.interior_register_date = interior_register_date;
        this.interior_image_path = interior_image_path;

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
