package com.hanssem.app.controller;

import com.hanssem.app.dto.WishlistDto;
import com.hanssem.app.dto.WishlistPostDto;
import com.hanssem.app.service.WishlistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;


@Controller
@RequestMapping("/wishlist")
public class WishlistController {

    @Autowired
    private WishlistService wishlistService;

    @GetMapping("")
    public String wishlist(HttpServletRequest request, HttpServletResponse response, Model model, Integer product_number) throws IOException {
        HttpSession session = request.getSession();
//        Integer member_number = (Integer) session.getAttribute("member_number");
        String member_id = (String)session.getAttribute("member_id");
        Integer member_number = wishlistService.getMemberNumber(member_id);
System.out.println("member_id: " + member_id);
        // 임시로 1번
/*        if (member_id == null) {
            String tmp_msg = URLEncoder.encode("로그인 후 이용 가능 합니다.", "utf-8");
            String msg = "loginError";
            return "redirect:/?msg="+tmp_msg;

System.out.println("tmp_msg: " + tmp_msg);
            PrintWriter out = response.getWriter();
            out.println("<script>");
            out.println("alert(\"로그인 후 이용 가능 합니다.\")");
            out.println("alert('"+tmp_msg+"')");
            out.println("history.back()");
            out.println("</script>");
            out.flush();

        }*/

        WishlistDto wishlistDto = new WishlistDto();
        wishlistDto.setProduct_number(product_number);
        wishlistDto.setMember_number(member_number);

        List<WishlistDto> list = wishlistService.select(wishlistDto);
        model.addAttribute("list", list);

        return "wishlist";
    }

    @PostMapping("/")
    public ResponseEntity<String> wishPost(HttpServletRequest request, @RequestBody WishlistPostDto dto) {
        HttpSession session = request.getSession();
//        Integer memberNumber = (Integer) session.getAttribute("member_number");
        String member_id = (String) session.getAttribute("member_id");
        Integer member_number = wishlistService.getMemberNumber(member_id);

//       int resultNumber = wishlistService.wishlistWork(memberNumber,dto);

       /*
        if(resultNumber == 0){
            return new ResponseEntity<>("이미 위시리스트에 존재하는 상품입니다. ", HttpStatus.BAD_REQUEST);
        }*/

        wishlistService.wishlistWork(member_number, dto);


       return new ResponseEntity<>("", HttpStatus.OK);
    }

    @DeleteMapping("/flush")
    public ResponseEntity<String> flush(HttpServletRequest request) {
        HttpSession session = request.getSession();
//        Integer member_number = (Integer) session.getAttribute("member_number");
        String member_id = (String) session.getAttribute("member_id");
        Integer member_number = wishlistService.getMemberNumber(member_id);

        wishlistService.deleteAllWishlist(member_number);


        return new ResponseEntity<>("", HttpStatus.OK);
    }
}
