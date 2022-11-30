package com.hanssem.app.dao;

import com.hanssem.app.dto.CategoryDto;
import com.hanssem.app.dto.SearchCondition;
import com.hanssem.app.dto.SearchResult;
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

    /** 카테고리 가져오기*/
    public List<CategoryDto> categoryList() {
        return session.selectList(namespace+"selectCategory");
    }

    public Integer searchSelectCount(SearchCondition sc) {
        return session.selectOne(namespace+"searchSelectCount", sc);
    }

    public List<SearchResult> searchSelectList(SearchCondition sc) {
        return session.selectList(namespace+"searchProduct", sc);
    }
}
