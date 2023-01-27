package com.hanssem.app.dto;

public class SizeDto {
    private Integer category_code_number;
    private Integer size_code_number;
    private String size_code_name;

    public SizeDto() {
    }

    public SizeDto(Integer category_code_number, Integer size_code_number, String size_code_name) {
        this.category_code_number = category_code_number;
        this.size_code_number = size_code_number;
        this.size_code_name = size_code_name;
    }

    public Integer getCategory_code_number() {
        return category_code_number;
    }

    public void setCategory_code_number(Integer category_code_number) {
        this.category_code_number = category_code_number;
    }

    public Integer getSize_code_number() {
        return size_code_number;
    }

    public void setSize_code_number(Integer size_code_number) {
        this.size_code_number = size_code_number;
    }

    public String getSize_code_name() {
        return size_code_name;
    }

    public void setSize_code_name(String size_code_name) {
        this.size_code_name = size_code_name;
    }

    @Override
    public String toString() {
        return "SizeDto{" +
                "category_code_number=" + category_code_number +
                ", size_code_number=" + size_code_number +
                ", size_code_name='" + size_code_name + '\'' +
                '}';
    }
}
