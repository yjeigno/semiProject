package com.hanssem.app.dto;

public class ColorCodeDto {
    private Integer color_code_number;
    private String color_code_name;
    private String color_code_code;

    public ColorCodeDto(Integer color_code_number, String color_code_name, String color_code_code) {
        this.color_code_number = color_code_number;
        this.color_code_name = color_code_name;
        this.color_code_code = color_code_code;
    }

    public Integer getColor_code_number() {
        return color_code_number;
    }

    public void setColor_code_number(Integer color_code_number) {
        this.color_code_number = color_code_number;
    }

    public String getColor_code_name() {
        return color_code_name;
    }

    public void setColor_code_name(String color_code_name) {
        this.color_code_name = color_code_name;
    }

    public String getColor_code_code() {
        return color_code_code;
    }

    public void setColor_code_code(String color_code_code) {
        this.color_code_code = color_code_code;
    }

    public ColorCodeDto() {}

}
