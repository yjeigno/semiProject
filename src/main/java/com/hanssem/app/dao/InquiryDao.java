package com.hanssem.app.dao;

import com.hanssem.app.dto.InquiryDto;
import com.hanssem.app.dto.InquiryUpdateDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class InquiryDao {

    @Autowired
    SqlSession session;

    private String namespace = "com.hanssem.app.dao.inquiryMapper.";

    public int insert(InquiryDto dto) throws Exception {
        return session.insert(namespace+"insert", dto);
    }

    // 전체 게시글 개수
    public int count() throws Exception {
        return session.selectOne(namespace+"count");
    }

    // 게시글 전체 가져오기(특정 번호부터 몇개)
    public List<InquiryDto> selectPage(Map map) throws Exception {
        return session.selectList(namespace+"selectPage", map);
    }

    public InquiryDto detail(Integer qna_number) throws Exception {
        return session.selectOne(namespace+"detail", qna_number);
    }

    public int update(InquiryUpdateDto dto) throws Exception {
        return session.update(namespace+"update", dto);
    }

}
