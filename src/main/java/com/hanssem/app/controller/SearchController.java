package com.hanssem.app.controller;

import com.fasterxml.jackson.databind.util.JSONPObject;
import com.hanssem.app.dto.*;
import com.hanssem.app.service.SearchService;
import com.hanssem.app.service.UserManageService;
import com.mysql.cj.xdevapi.JsonArray;
import com.mysql.cj.xdevapi.JsonValue;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class SearchController {
    @Autowired
    SearchService searchService;
    @Autowired
    UserManageService userManager;
    @RequestMapping(value = "/search", method = {RequestMethod.GET, RequestMethod.POST})
    public String search(SearchCondition sc, Model m, HttpSession session) {

        try {
            Integer page = sc.getPage();
            Integer pageSize = sc.getPageSize();
            String sort = sc.getSort();
            Integer category = sc.getCategory();
            Integer size = sc.getSize();
            Integer color = sc.getColor();
            Integer minPrice = sc.getMinPrice();
            Integer maxPrice = sc.getMaxPrice();
            if(page==null){
                page=1;
                sc.setPage(1);
            }
            if(page<1){
                page=1;
                sc.setPage(1);
            }
            if(pageSize==null) {
                pageSize = 20;
                sc.setPageSize(20);
            }
            if(pageSize>60){
                pageSize = 60;
                sc.setPageSize(60);
            }
            if(sort==null){
                sort = "popular";
                sc.setSort("popular");
            }

            List<SizeFilterDto> cateSize = null;
            List<ColorFilterDto> cateColor = null;
            List<CateFilterDto> cateList = searchService.getCateInfo(sc);
            Integer totalCount = searchService.getSearchResultCount(sc);
            if(category!=null){
                for (CateFilterDto cfd: cateList) {
                    if(cfd.getCategory_code_number().equals(category)){
                        totalCount = cfd.getCategory_amount();
                    }
                }
                cateSize = searchService.getSizeList(sc);
                cateColor = searchService.getColorList(sc);
            }
            if(size!=null){
                for(SizeFilterDto sfd : cateSize) {
                    if(sfd.getSize_code_number().equals(size)){
                        totalCount = sfd.getSize_amount();
                    }
                }
            }
            if(color!=null){
                for(ColorFilterDto cfd : cateColor) {
                    if(cfd.getColor_code_number().equals(color)){
                        totalCount = cfd.getColor_amount();
                    }
                }
            }
            if(minPrice!=null||maxPrice!=null){
                totalCount = searchService.getPriceAmount(sc);
                System.out.println("totalcount : " + totalCount);
            }
            PageHandler ph = new PageHandler(totalCount, page, pageSize);
            System.out.println(sc);
            sc.setOffset((page-1)*pageSize);
            sc.setPageSize(pageSize);
            sc.setSort(sort);
            Integer totalProduct = searchService.getSearchResultCount(sc);
            List<SearchResult> list = searchService.getSearchResultList(sc);
            for (SearchResult sr:list
                 ) {
                System.out.println(sr);
            }

            if(cateSize!=null){
                m.addAttribute("cateSize", cateSize);
                m.addAttribute("cateColor", cateColor);
            }
//            if(session.getAttribute("id")!=null){
//                String member_id = (String) session.getAttribute("id");
                String member_id = "akrclsek1";
                MemberDto member = new MemberDto();
                member.setMember_id(member_id);
                Integer member_number = userManager.getUserNo(member_id);
                List<WishProduct> wishList = userManager.getUserWishList(member_id);
                m.addAttribute("wishList", wishList);
//            }
            m.addAttribute("totalAmount", totalProduct);
            m.addAttribute("sc", sc);
            m.addAttribute("cate", cateList);
            m.addAttribute("list", list);
            m.addAttribute("ph", ph);
            m.addAttribute("page", page);
            m.addAttribute("pageSize", pageSize);

            return "search";
        } catch (Exception e) {
//            throw new RuntimeException(e);
            e.printStackTrace();
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/removeWish.do", method = {RequestMethod.POST})
    public @ResponseBody Long removeWish(@RequestBody WishProduct wishNum, HttpSession session){
//        String id = (String) session.getAttribute("id");
        String member_id = "akrclsek1";
        Integer member_number = userManager.getUserNo(member_id);
        Integer product_number = wishNum.getProduct_number();
        Map map = new HashMap();
        map.put("member_number", member_number);
        map.put("product_number", product_number);
        userManager.removeWish(map);

        return 1l;
    }
    @RequestMapping(value = "/addWish.do", method = {RequestMethod.POST})
    public @ResponseBody Long addWish(@RequestBody WishProduct wishNum, HttpSession session){
        String member_id = "akrclsek1";
        Integer member_number = userManager.getUserNo(member_id);
        System.out.println("member_number = " + member_number);
        Integer product_number = wishNum.getProduct_number();
        System.out.println(wishNum);
        Map map = new HashMap();
        map.put("member_number", member_number);
        map.put("product_number", product_number);
        userManager.addWish(map);

        return 1l;
    }
}
