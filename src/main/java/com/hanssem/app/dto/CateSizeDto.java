package com.hanssem.app.dto;

public class CateSizeDto {
    private Integer category_size_number;
    private Integer size_code_number;
    private Integer category_code_number;

    private ProductDto productDto;
    private SizeCodeDto sizeCodeDto;

    public ProductDto getProductDto() {
        return productDto;
    }

    public void setProductDto(ProductDto productDto) {
        this.productDto = productDto;
    }

    public SizeCodeDto getSizeCodeDto() {
        return sizeCodeDto;
    }

    public void setSizeCodeDto(SizeCodeDto sizeCodeDto) {
        this.sizeCodeDto = sizeCodeDto;
    }

    public Integer getCategory_size_number() {
        return category_size_number;
    }

    public void setCategory_size_number(Integer category_size_number) {
        this.category_size_number = category_size_number;
    }

    public Integer getSize_code_number() {
        return size_code_number;
    }

    public void setSize_code_number(Integer size_code_number) {
        this.size_code_number = size_code_number;
    }

    public Integer getCategory_code_number() {
        return category_code_number;
    }

    public void setCategory_code_number(Integer category_code_number) {
        this.category_code_number = category_code_number;
    }

    public CateSizeDto(){}

    public CateSizeDto(Integer category_size_number, Integer size_code_number, Integer category_code_number, ProductDto productDto, SizeCodeDto sizeCodeDto) {
        this.category_size_number = category_size_number;
        this.size_code_number = size_code_number;
        this.category_code_number = category_code_number;
        this.productDto = productDto;
        this.sizeCodeDto = sizeCodeDto;
    }

    @Override
    public String toString() {
        return "CateSizeDto{" +
                "category_size_number=" + category_size_number +
                ", size_code_number=" + size_code_number +
                ", category_code_number=" + category_code_number +
                ", productDto=" + productDto +
                ", sizeCodeDto=" + sizeCodeDto +
                '}';
    }
}
