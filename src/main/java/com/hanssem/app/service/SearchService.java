package com.hanssem.app.service;

import com.hanssem.app.dto.*;

import java.util.List;

public interface SearchService {
    List<CategoryDto> getCateList();

    Integer getSearchResultCount(SearchCondition sc);

    List<SearchResult> getSearchResultList(SearchCondition sc);

    List<SizeDto> getSizeList(Integer category_code_number);

    List<CateFilterDto> getCateInfo(SearchCondition sc);
//    String[] getSearchCateList(SearchCondition sc); //검색대상 카테고리 리스트
}
