package com.hanssem.app.controller;

import com.hanssem.app.dto.AddressDto;
import com.hanssem.app.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class AddressController {
//    @PostMapping("/address/ajax")
//    @ResponseBody
//    public Map<String, Object> addressAjax(AddressDto addressDto) {
//        Map<String, Object> result = new HashMap<String, Object>();
//
//        System.out.println(addressDto.getAddress_home());
//        System.out.println(addressDto.getAddress_name());
//
//        System.out.println(addressDto.getAddress_phone());
//        System.out.println(addressDto.getAddress_adrs());
//
//        result.put("code","0000");
//
//
//       return  result;
//    }
//    @PostMapping("/addressForm")
//    public String home(@RequestParam String home){
//        System.out.printf(">>home"+ home);
//        return "addressForm";
//    }

//    @GetMapping("Form")
//    public String address(){
//        return "addressForm";
//    }

    @Autowired
    private AddressService addressService;




   @GetMapping("/address")
    public String address(Model model) {

       List<AddressDto> addressDtoList = addressService.selectAddress(1);;
       model.addAttribute("list",addressDtoList);



        return "address";
    }


}
