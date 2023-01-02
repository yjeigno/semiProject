package com.hanssem.app.service;

import com.hanssem.app.dao.InquiryDao;
import com.hanssem.app.dto.InquiryDto;
import com.hanssem.app.dto.InquiryUpdateDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class InquiryService {

    @Autowired
    InquiryDao inquiryDao;

    public int write(InquiryDto inquiryDto) throws Exception {
        return inquiryDao.insert(inquiryDto);
    }

    public int getCount() throws Exception {
        return inquiryDao.count();
    }

    public List<InquiryDto> getPage(Map map) throws Exception {
        return inquiryDao.selectPage(map);
    }

    public InquiryDto detail(Integer qna_number) throws Exception {
        return inquiryDao.detail(qna_number);
    }

    public int update(InquiryUpdateDto dto) throws Exception {
        return inquiryDao.update(dto);
    }

    public int delete(Integer qnaNumber) throws Exception {
        return inquiryDao.delete(qnaNumber);
    }
}
