package com.hanssem.app.dto;

public class ProductSizeColorDto {
    private Integer product_size_color_number;
    private Integer product_size_color_amount;
    private Integer product_number;
    private Integer size_code_number;
    private Integer color_code_number;
    private ColorCodeDto colorCodeDto;
    private SizeCodeDto sizeCodeDto;

    public Integer getProduct_size_color_number() {
        return product_size_color_number;
    }

    public void setProduct_size_color_number(Integer product_size_color_number) {
        this.product_size_color_number = product_size_color_number;
    }

    public Integer getProduct_size_color_amount() {
        return product_size_color_amount;
    }

    public void setProduct_size_color_amount(Integer product_size_color_amount) {
        this.product_size_color_amount = product_size_color_amount;
    }

    public Integer getProduct_number() {
        return product_number;
    }

    public void setProduct_number(Integer product_number) {
        this.product_number = product_number;
    }

    public Integer getSize_code_number() {
        return size_code_number;
    }

    public void setSize_code_number(Integer size_code_number) {
        this.size_code_number = size_code_number;
    }

    public Integer getColor_code_number() {
        return color_code_number;
    }

    public void setColor_code_number(Integer color_code_number) {
        this.color_code_number = color_code_number;
    }

    public ColorCodeDto getColorCodeDto() {
        return colorCodeDto;
    }

    public void setColorCodeDto(ColorCodeDto colorCodeDto) {
        this.colorCodeDto = colorCodeDto;
    }

    public SizeCodeDto getSizeCodeDto() {
        return sizeCodeDto;
    }

    public void setSizeCodeDto(SizeCodeDto sizeCodeDto) {
        this.sizeCodeDto = sizeCodeDto;
    }

    public ProductSizeColorDto(){}

    public ProductSizeColorDto(Integer product_size_color_number, Integer product_size_color_amount, Integer product_number, Integer size_code_number, Integer color_code_number, ColorCodeDto colorCodeDto, SizeCodeDto sizeCodeDto) {
        this.product_size_color_number = product_size_color_number;
        this.product_size_color_amount = product_size_color_amount;
        this.product_number = product_number;
        this.size_code_number = size_code_number;
        this.color_code_number = color_code_number;

        this.colorCodeDto = colorCodeDto;
        this.sizeCodeDto = sizeCodeDto;
    }
}
