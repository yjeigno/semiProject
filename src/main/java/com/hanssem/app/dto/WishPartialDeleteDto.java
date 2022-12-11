package com.hanssem.app.dto;

import java.util.List;

public class WishPartialDeleteDto {
    List<Integer> productNumbers;
    Integer memberNumber;

    public List<Integer> getProductNumbers() {
        return productNumbers;
    }

    public void setProductNumbers(List<Integer> productNumbers) {
        this.productNumbers = productNumbers;
    }

    public Integer getMemberNumber() {
        return memberNumber;
    }

    public void setMemberNumber(Integer memberNumber) {
        this.memberNumber = memberNumber;
    }
}
