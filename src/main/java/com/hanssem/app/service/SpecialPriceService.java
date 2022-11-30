package com.hanssem.app.service;

import com.hanssem.app.dao.SpecialPriceDao;
import com.hanssem.app.dto.SpecialPriceDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class SpecialPriceService {

    @Autowired
    private SpecialPriceDao specialPriceDao;

    public List<SpecialPriceDto> selectSpecialPrice(Integer product_number) {
        return specialPriceDao.selectSpecial(product_number);
    }

}
