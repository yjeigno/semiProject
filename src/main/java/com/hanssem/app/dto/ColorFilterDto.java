package com.hanssem.app.dto;

public class ColorFilterDto {
    private Integer color_code_number;
    private Integer color_amount;
    private Integer category_code_number;
    private String color_code_name;

    public ColorFilterDto(){}

    public ColorFilterDto(Integer color_code_number, Integer color_amount, Integer category_code_number, String color_code_name) {
        this.color_code_number = color_code_number;
        this.color_amount = color_amount;
        this.category_code_number = category_code_number;
        this.color_code_name = color_code_name;
    }

    public Integer getColor_code_number() {
        return color_code_number;
    }

    public void setColor_code_number(Integer color_code_number) {
        this.color_code_number = color_code_number;
    }

    public Integer getColor_amount() {
        return color_amount;
    }

    public void setColor_amount(Integer color_amount) {
        this.color_amount = color_amount;
    }

    public Integer getCategory_code_number() {
        return category_code_number;
    }

    public void setCategory_code_number(Integer category_code_number) {
        this.category_code_number = category_code_number;
    }

    public String getColor_code_name() {
        return color_code_name;
    }

    public void setColor_code_name(String color_code_name) {
        this.color_code_name = color_code_name;
    }

    @Override
    public String toString() {
        return "ColorFilterDto{" +
                "color_code_number=" + color_code_number +
                ", color_amount=" + color_amount +
                ", category_code_number=" + category_code_number +
                ", color_code_name='" + color_code_name + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object obj){
        if(this.getColor_code_number()==(Integer) obj){
            return true;
        }
        return false;
    }
}
