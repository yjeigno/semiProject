package com.hanssem.app.service;

import com.hanssem.app.dao.SearchDao;
import com.hanssem.app.dto.CategoryDto;
import com.hanssem.app.dto.SearchCondition;
import com.hanssem.app.dto.SearchResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SearchService {
    @Autowired
    SearchDao searchDao;

    public List<CategoryDto> getCateList() {
        return searchDao.categoryList();
    }

    public Integer getSearchResultCount(SearchCondition sc) {
        return searchDao.searchSelectCount(sc);
    }
    public List<SearchResult> getSearchResultList(SearchCondition sc) {
        return searchDao.searchSelectList(sc);
    }
}
