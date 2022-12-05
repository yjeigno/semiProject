package com.hanssem.app.dto;

public class SizeFilterDto extends SizeDto{
    private Integer size_amount;

    public SizeFilterDto(){}

    public SizeFilterDto(Integer category_code_number, Integer size_code_number, String size_code_name, Integer size_amount) {
        super(category_code_number, size_code_number, size_code_name);
        this.size_amount = size_amount;
    }

    public Integer getSize_amount() {
        return size_amount;
    }

    public void setSize_amount(Integer size_amount) {
        this.size_amount = size_amount;
    }

    @Override
    public String toString() {
        return "SizeFilterDto{" +
                "size_amount=" + size_amount +
                '}';
    }

    @Override
    public boolean equals(Object obj) {
        if (this.getSize_code_number() == (Integer) obj) {
            return true;
        }
        return false;
    }
}
