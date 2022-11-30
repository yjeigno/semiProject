package com.hanssem.app.dao;

import com.hanssem.app.dto.ImageDto;
import com.hanssem.app.dto.ProductDto;
import com.hanssem.app.dto.SizeCodeDto;
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
    public void selectSize() throws Exception{
         List<SizeCodeDto> list = DealDao.selectSize(1);
        System.out.println("list : "+ list.toString());

    }
}