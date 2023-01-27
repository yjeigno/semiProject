package com.hanssem.app.service;


import com.hanssem.app.dao.InteriorDao;
import com.hanssem.app.dto.InteriorDto;
import com.hanssem.app.dto.InteriordetailDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InteriorService {

    @Autowired
    private InteriorDao interiorDao;

    public List<InteriorDto> selectInterior(Integer interior_category_number){
        return interiorDao.selectInterior(interior_category_number);
    }

    public List<InteriordetailDto> selectInteriordetail(Integer interior_number){
        return interiorDao.selectInteriordetail(interior_number);
    }

}
