package com.hanssem.app.dto;

public class SearchCondition {
    private Integer page = 1;
    private Integer pageSize = 1;
    private String search = "";
    private Integer offset = 0;
//    private String option = "";
    private String sort;
    private Integer category;
    private Integer size;
    private Integer color;
    private Integer minPrice;
    private Integer maxPrice;

    public SearchCondition() {}

    public SearchCondition(Integer page, String search, String sort, Integer category, Integer size, Integer color, Integer minPrice, Integer maxPrice) {
        this.page = page;
        this.search = search;
        this.sort = sort;
        this.category = category;
        this.size = size;
        this.color = color;
        this.minPrice = minPrice;
        this.maxPrice = maxPrice;
    }

    public Integer getMinPrice() {
        return minPrice;
    }

    public void setMinPrice(Integer minPrice) {
        this.minPrice = minPrice;
    }

    public Integer getMaxPrice() {
        return maxPrice;
    }

    public void setMaxPrice(Integer maxPrice) {
        this.maxPrice = maxPrice;
    }

    public Integer getCategory() {
        return category;
    }

    public void setCategory(Integer category) {
        this.category = category;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public Integer getColor() {
        return color;
    }

    public void setColor(Integer color) {
        this.color = color;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public String getSearch() {
        return search;
    }

    public void setSearch(String search) {
        this.search = search;
    }

    public Integer getOffset() {
        return offset;
    }

    public void setOffset(Integer offset) {
        this.offset = offset;
    }

//    public String getOption() {
//        return option;
//    }
//
//    public void setOption(String option) {
//        this.option = option;
//    }


    @Override
    public String toString() {
        return "SearchCondition{" +
                "page=" + page +
                ", pageSize=" + pageSize +
                ", search='" + search + '\'' +
                ", offset=" + offset +
                ", sort='" + sort + '\'' +
                ", category=" + category +
                ", size=" + size +
                ", color=" + color +
                ", minPrice=" + minPrice +
                ", maxPrice=" + maxPrice +
                '}';
    }
}
