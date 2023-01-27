package com.hanssem.app.controller;

import com.hanssem.app.dto.InteriordetailDto;
import com.hanssem.app.service.InteriorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class Interior_detailController {

    @Autowired
    private InteriorService interiorService;

    @GetMapping("/Interior_detail")
    public String Interior_detail(Model model) {

        List<InteriordetailDto> interior_number = interiorService.selectInteriordetail(1);;
        model.addAttribute("list", interior_number);
        return "Interior_detail";
    }
}
