package com.hanssem.app.dto;

public class CategoryDto {
    private Integer category_code_number;
    private String category_code_name;

    public CategoryDto() {
    }

    public CategoryDto(Integer category_code_number, String category_code_name) {
        this.category_code_number = category_code_number;
        this.category_code_name = category_code_name;
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

    @Override
    public String toString() {
        return "CategoryDto{" +
                "category_code_number=" + category_code_number +
                ", category_code_name='" + category_code_name + '\'' +
                '}';
    }
}
