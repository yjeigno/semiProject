package com.hanssem.app.controller;

import com.hanssem.app.service.SpecialPriceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class SpecialPriceController {

    @Autowired
    private SpecialPriceService specialPriceService;

    @GetMapping("/specialPrice")
    public String specialPrice(Model model, Integer product_number ,HttpServletRequest request) {


//        Map map = new HashMap();
//        map.put("product_number", product_number);
        if(product_number==null) product_number = 2;

        model.addAttribute("list", specialPriceService.selectSpecialPrice(product_number));

        return "specialPrice";

/*        if(!loginChk(request)) {
            HttpSession session = request.getSession();
            session.setAttribute("toURL", request.getRequestURL());
            return "redirect:/login/login";
        }*/

    }



/*     private boolean loginChk(HttpServletRequest request) {
        ttpSession session = request.getSession();
        return session.getAttribute("id") != null;

    }*/
}
