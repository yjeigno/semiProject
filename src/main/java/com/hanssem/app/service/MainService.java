package com.hanssem.app.service;

import com.hanssem.app.dao.MainDao;
import com.hanssem.app.dto.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MainService {
    @Autowired
    MainDao mainDao;


    public ProductDto getInfo(Integer product_number) {
        return mainDao.select(product_number);
    }

    public List<ImageColorDto> showImgColor(Integer product_number) {
        return mainDao.selectImgColor(product_number);
    }
    public SpecialPriceDto getDiscount(Integer product_number){
        return mainDao.selectDiscount(product_number);
    }






}
