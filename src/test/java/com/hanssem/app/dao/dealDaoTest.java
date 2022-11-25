package com.hanssem.app.dao;

import com.hanssem.app.dto.dealDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class dealDaoTest {
    @Autowired
    dealDao dealDao;
    @Test
    public void select() throws Exception{
        dealDto dealDto = dealDao.select(1);
        System.out.println("dealDto : " + dealDto);

    }
}