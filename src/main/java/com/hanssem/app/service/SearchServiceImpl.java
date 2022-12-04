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
    public List<SizeDto> getSizeList(Integer category_code_number){
        return searchDao.searchSizeList(category_code_number);
    }

    @Override
    public List<CateFilterDto> getCateInfo(SearchCondition sc){
        return searchDao.searchCateInfoList(sc);
    };


}
