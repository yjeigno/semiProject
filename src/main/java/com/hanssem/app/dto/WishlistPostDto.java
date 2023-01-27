package com.hanssem.app.dto;

public class WishlistPostDto {
    private Integer productNumber;
    private boolean isWishlist;

    public Integer getProductNumber() {
        return productNumber;
    }

    public void setProductNumber(Integer productNumber) {
        this.productNumber = productNumber;
    }

    public boolean getIsWishlist() {
        return isWishlist;
    }

    public void setIsWishlist(boolean IsWishlist) {
        isWishlist = IsWishlist;
    }
}
