package com.hanssem.app.dto;

public class PageHandler {
    private String search; //검색어
    private Integer totalCount; // 전체 검색결과
    private Integer naviSize = 10; //한번에 보여질 페이지개수
    private Integer pageSize; // 한번에 보여줄 게시글 개수
    private Integer totalPage; //전체 페이지
    private Integer page; // 현재 페이지
    private Integer beginPage;
    private Integer endPage;
    private boolean showPrev;
    private boolean showFirst;
    private boolean showNext;
    private boolean showLast;

    public PageHandler(){}

    public PageHandler(Integer totalCount, Integer page, Integer pageSize, String search) {
        this.totalCount = totalCount;
        this.page = page;
        this.pageSize = pageSize;
        this.search = search;
        totalPage = (int)Math.ceil((double) totalCount / pageSize);
        beginPage = (page - 1) / naviSize * naviSize + 1;
        endPage = Math.min(beginPage + naviSize - 1, totalPage);
        showPrev = beginPage != 1;
        showFirst = beginPage != 1;
        showNext = endPage != totalPage;
        showLast = endPage != totalPage;
    }

    public String getSearch() {
        return search;
    }

    public void setSearch(String search) {
        this.search = search;
    }

    public Integer getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Integer totalCount) {
        this.totalCount = totalCount;
    }

    public Integer getNaviSize() {
        return naviSize;
    }

    public void setNaviSize(Integer naviSize) {
        this.naviSize = naviSize;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getBeginPage() {
        return beginPage;
    }

    public void setBeginPage(Integer beginPage) {
        this.beginPage = beginPage;
    }

    public Integer getEndPage() {
        return endPage;
    }

    public void setEndPage(Integer endPage) {
        this.endPage = endPage;
    }

    public boolean isShowPrev() {
        return showPrev;
    }

    public void setShowPrev(boolean showPrev) {
        this.showPrev = showPrev;
    }

    public boolean isShowFirst() {
        return showFirst;
    }

    public void setShowFirst(boolean showFirst) {
        this.showFirst = showFirst;
    }

    public boolean isShowNext() {
        return showNext;
    }

    public void setShowNext(boolean showNext) {
        this.showNext = showNext;
    }

    public boolean isShowLast() {
        return showLast;
    }

    public void setShowLast(boolean showLast) {
        this.showLast = showLast;
    }

    @Override
    public String toString() {
        return "PageHandler{" +
                "totalCount=" + totalCount +
                ", naviSize=" + naviSize +
                ", pageSize=" + pageSize +
                ", totalPage=" + totalPage +
                ", page=" + page +
                ", beginPage=" + beginPage +
                ", endPage=" + endPage +
                ", showPrev=" + showPrev +
                ", showFirst=" + showFirst +
                ", showNext=" + showNext +
                ", showLast=" + showLast +
                ", search=" + search +
                '}';
    }
}
