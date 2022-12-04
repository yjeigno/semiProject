package com.hanssem.app.dto;

public class ImageColorDto {
    private Integer image_color_number;
    private Integer image_number;
    private Integer color_code_number;

    private ImageDto imageDto;
    private ColorCodeDto colorCodeDto;


    @Override
    public String toString() {
        return "ImageColorDto{" +
                "image_color_number=" + image_color_number +
                ", image_number=" + image_number +
                ", color_code_number=" + color_code_number +
                ", imageDto=" + imageDto +
                ", colorCodeDto=" + colorCodeDto +
                '}';
    }

    public ImageColorDto() {}

    public ImageColorDto(Integer image_color_number, Integer image_number, Integer color_code_number, ImageDto imageDto, ColorCodeDto colorCodeDto) {
        this.image_color_number = image_color_number;
        this.image_number = image_number;
        this.color_code_number = color_code_number;
        this.imageDto = imageDto;
        this.colorCodeDto = colorCodeDto;
    }

    public Integer getImage_color_number() {
        return image_color_number;
    }

    public void setImage_color_number(Integer image_color_number) {
        this.image_color_number = image_color_number;
    }

    public Integer getImage_number() {
        return image_number;
    }

    public void setImage_number(Integer image_number) {
        this.image_number = image_number;
    }

    public Integer getColor_code_number() {
        return color_code_number;
    }

    public void setColor_code_number(Integer color_code_number) {
        this.color_code_number = color_code_number;
    }

    public ImageDto getImageDto() {
        return imageDto;
    }

    public void setImageDto(ImageDto imageDto) {
        this.imageDto = imageDto;
    }

    public ColorCodeDto getColorCodeDto() {
        return colorCodeDto;
    }

    public void setColorCodeDto(ColorCodeDto colorCodeDto) {
        this.colorCodeDto = colorCodeDto;
    }
}
