package com.hanssem.app.controller;

import com.hanssem.app.dto.CategoryDto;
import com.hanssem.app.dto.PageHandler;
import com.hanssem.app.dto.SearchCondition;
import com.hanssem.app.dto.SearchResult;
import com.hanssem.app.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

@Controller
public class SearchController {
    @Autowired
    SearchService searchService;
    @RequestMapping(value = "/search", method = {RequestMethod.GET, RequestMethod.POST})
    public String search(SearchCondition sc, Model m) {

        try {
            System.out.println(sc.getPage() + " " +  sc.getPageSize()+ " " +  sc.getSearch());
            Integer page = sc.getPage();
            Integer pageSize = sc.getPageSize();
            String search = sc.getSearch();
            if(page==null){
                page=1;
                sc.setPage(1);
            }
            if(pageSize==null) {
                pageSize = 40;
                sc.setPageSize(40);
            }
            Integer totalCount = searchService.getSearchResultCount(sc);
            System.out.println("totalCount : "  + totalCount);

            PageHandler ph = new PageHandler(totalCount, page, pageSize, search);
            System.out.println("pagehandler:" + ph);
            List<CategoryDto> cateList = searchService.getCateList();
            List<SearchResult> list = searchService.getSearchResultList(sc);
            System.out.println(list);
            System.out.println(cateList);
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
//    @PostMapping("/search")
//    public String searchResult(String keyword) throws UnsupportedEncodingException {
//        return "redirect:/search?keyword="+keyword;
//    }


}
