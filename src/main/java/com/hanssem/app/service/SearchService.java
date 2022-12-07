package com.hanssem.app.service;

import com.hanssem.app.dto.*;

import java.awt.*;
import java.util.List;

public interface SearchService {
    List<CategoryDto> getCateList();

    Integer getSearchResultCount(SearchCondition sc);

    List<SearchResult> getSearchResultList(SearchCondition sc);

    List<SizeFilterDto> getSizeList(SearchCondition sc);

    List<CateFilterDto> getCateInfo(SearchCondition sc);
//    String[] getSearchCateList(SearchCondition sc); //검색대상 카테고리 리스트
    List<ColorFilterDto> getColorList(SearchCondition sc);

    int getPriceAmount(SearchCondition sc);
}
