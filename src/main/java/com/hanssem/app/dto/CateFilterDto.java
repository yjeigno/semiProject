package com.hanssem.app.dto;

public class CateFilterDto extends CategoryDto{
    private Integer category_amount;

    public CateFilterDto() {
    }

    public CateFilterDto(Integer category_code_number, String category_code_name, Integer category_amount) {
        super(category_code_number, category_code_name);
        this.category_amount = category_amount;
    }

    public Integer getCategory_amount() {
        return category_amount;
    }

    public void setCategory_amount(Integer category_amount) {
        this.category_amount = category_amount;
    }

    @Override
    public String toString() {
        return "CateFilterDto{" +
                "category_amount=" + category_amount +
                '}';
    }

    @Override
    public boolean equals(Object obj) {
        if(this.getCategory_code_number() == (Integer) obj){
            return true;
        }

        return false;
    }
}
