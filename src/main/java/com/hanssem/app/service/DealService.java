package com.hanssem.app.service;

import com.hanssem.app.dao.DealDao;
import com.hanssem.app.dto.ImageDto;
import com.hanssem.app.dto.ProductDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class DealService {

    @Autowired
    DealDao dealDao;
    public ProductDto show(Integer product_number) {
        return dealDao.select(product_number);
    }
    public ImageDto show2(Integer product_number) {
        return dealDao.selectimg(product_number);
    }
}
