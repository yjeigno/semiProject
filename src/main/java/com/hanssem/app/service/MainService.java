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

//    public List<ImageDto> selectProductInfo(){
//        return mainDao.selectProductInfo();
//    }



    public List<InteriorDto> selectInterior(Integer interior_category_number){
        return mainDao.selectInterior(interior_category_number);
    }




}
