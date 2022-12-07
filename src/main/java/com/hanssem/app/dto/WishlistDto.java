package com.hanssem.app.dto;

import java.sql.Timestamp;

public class WishlistDto {

    private Integer wishlist_number;
    private Timestamp wishlist_register_date;
    private Integer member_number;
    private Integer product_number;

    private ProductDto productDto;

    private ImageDto imageDto;

    private SpecialPriceDto specialPriceDto;

    public SpecialPriceDto getSpecialPriceDto() {
        return specialPriceDto;
    }

    public void setSpecialPriceDto(SpecialPriceDto specialPriceDto) {
        this.specialPriceDto = specialPriceDto;
    }

    public ImageDto getImageDto() {
        return imageDto;
    }

    public void setImageDto(ImageDto imageDto) {
        this.imageDto = imageDto;
    }

    public Integer getWishlist_number() {
        return wishlist_number;
    }

    public void setWishlist_number(Integer wishlist_number) {
        this.wishlist_number = wishlist_number;
    }

    public Timestamp getWishlist_register_date() {
        return wishlist_register_date;
    }

    public void setWishlist_register_date(Timestamp wishlist_register_date) {
        this.wishlist_register_date = wishlist_register_date;
    }

    public Integer getMember_number() {
        return member_number;
    }

    public void setMember_number(Integer member_number) {
        this.member_number = member_number;
    }

    public Integer getProduct_number() {
        return product_number;
    }

    public void setProduct_number(Integer product_number) {
        this.product_number = product_number;
    }

    public ProductDto getProductDto() {
        return productDto;
    }

    public void setProductDto(ProductDto productDto) {
        this.productDto = productDto;
    }
}
