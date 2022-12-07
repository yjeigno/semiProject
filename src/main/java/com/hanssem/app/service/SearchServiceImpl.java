package com.hanssem.app.service;

import com.hanssem.app.dao.SearchDao;
import com.hanssem.app.dto.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SearchServiceImpl implements SearchService {
    @Autowired
    SearchDao searchDao;

    @Override
    public List<CategoryDto> getCateList() {
        return searchDao.categoryList();
    }

    @Override
    public Integer getSearchResultCount(SearchCondition sc) {
        return searchDao.searchSelectCount(sc);
    }
    @Override
    public List<SearchResult> getSearchResultList(SearchCondition sc) {
        return searchDao.searchSelectList(sc);
    }

    @Override
    public List<SizeFilterDto> getSizeList(SearchCondition sc){
        return searchDao.searchSizeList(sc);
    }

    @Override
    public List<CateFilterDto> getCateInfo(SearchCondition sc){
        return searchDao.searchCateInfoList(sc);
    };

    public List<ColorFilterDto> getColorList(SearchCondition sc){
        return searchDao.searchColorList(sc);
    };
    public int getPriceAmount(SearchCondition sc) {
        return searchDao.searchPriceAmount(sc);
    };

}
