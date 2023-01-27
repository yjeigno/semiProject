package com.hanssem.app.dao;

import com.hanssem.app.dto.*;
import com.hanssem.app.service.DealService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class DealDaoTest {
    @Autowired
    DealDao DealDao;
//    DealService dealService;
    @Test
    public void select() throws Exception{
        ProductDto dto = DealDao.select(1);
        System.out.println("dealDto : " +dto.toString());
    }

    @Test
    public void selectimg() throws Exception{
        ImageDto imageDto = DealDao.selectImg(1);
        System.out.println("dealDto : " + imageDto.toString());
    }

    @Test
    public void selectSizeColor() throws Exception{
//        .get(0).getColorCodeDto().getColor_code_name().length()
        List<ImageColorDto> list = DealDao.selectImgColor(1);
        System.out.println("list : " + list.get(0));

    }


}