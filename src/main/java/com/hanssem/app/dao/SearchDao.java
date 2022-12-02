package com.hanssem.app.dao;

import com.hanssem.app.dto.*;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SearchDao {
    @Autowired
    private SqlSession session;

    private static String namespace = "com.hanssem.app.dao.SearchMapper.";

    /** 검색 상품 가져오기*/
    public List<SearchResult> searchSelectList(SearchCondition sc) {
        return session.selectList(namespace+"searchProduct", sc);
    }
    /** 카테고리 가져오기*/
    public List<CategoryDto> categoryList() {
        return session.selectList(namespace+"selectCategory");
    }

    public Integer searchSelectCount(SearchCondition sc) {
        return session.selectOne(namespace+"searchSelectCount", sc);
    }

    /** 사이즈 가져오기*/
    public List<SizeDto> searchSizeList(Integer category_code_number) {
        return session.selectList(namespace+"selectSizeList", category_code_number);
    }

    public List<CateFilterDto> searchCateInfoList(SearchCondition sc) {
        return session.selectList(namespace+"getCateInfo", sc);
    }

}
