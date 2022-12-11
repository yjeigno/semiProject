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


    public List<ProductDto> selectAll() {
        return mainDao.selectAll();
    }


    public SpecialPriceDto getDiscount(Integer product_number){
        return mainDao.selectDiscount(product_number);
    }


    public List<InteriorDto> selectInterior(Integer interior_category_number){
        return mainDao.selectInterior(interior_category_number);
    }

    public List<InteriordetailDto> selectInteriordetail(Integer interior_number){
        return mainDao.selectInteriordetail(interior_number);
    }





}
