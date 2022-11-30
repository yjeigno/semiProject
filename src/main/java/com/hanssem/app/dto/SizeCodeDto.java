package com.hanssem.app.dto;

public class SizeCodeDto {
    private Integer size_code_number;
    private String size_code_name;

    private ProductDto productDto;

    private CateSizeDto cateSizeDto;

    public ProductDto getProductDto() {
        return productDto;
    }

    public void setProductDto(ProductDto productDto) {
        this.productDto = productDto;
    }

    public CateSizeDto getCateSizeDto() {
        return cateSizeDto;
    }

    public void setCateSizeDto(CateSizeDto cateSizeDto) {
        this.cateSizeDto = cateSizeDto;
    }

    public SizeCodeDto(Integer size_code_number, String size_code_name, ProductDto productDto, CateSizeDto cateSizeDto) {
        this.size_code_number = size_code_number;
        this.size_code_name = size_code_name;
        this.productDto = productDto;
        this.cateSizeDto = cateSizeDto;
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


    public SizeCodeDto () {}

    public SizeCodeDto(Integer size_code_number, String size_code_name) {
        this.size_code_number = size_code_number;
        this.size_code_name = size_code_name;
    }

    @Override
    public String toString() {
        return "SizeCodeDto{" +
                "size_code_number=" + size_code_number +
                ", size_code_name='" + size_code_name + '\'' +
                ", productDto=" + productDto +
                ", cateSizeDto=" + cateSizeDto +
                '}';
    }
}
