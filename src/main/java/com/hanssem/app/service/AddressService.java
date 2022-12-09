package com.hanssem.app.service;

import com.hanssem.app.dao.AddressDao;
import com.hanssem.app.dto.AddressDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AddressService {

   @Autowired
  private AddressDao addressDao;

   public List<AddressDto> selectAddress(Integer address_number){
       return addressDao.selectAddress(address_number);
   }


   public int addressMember(AddressDto addressDto) throws Exception{

       return addressDao.insertAddress(addressDto);
   }


    public List<AddressDto> insert(String address_home) {
       return addressDao.insert(address_home);}
    }




