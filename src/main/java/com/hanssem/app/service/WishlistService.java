package com.hanssem.app.service;

import com.hanssem.app.dao.WishlistDao;
import com.hanssem.app.dto.WishlistDto;
import com.hanssem.app.dto.WishlistPostDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class WishlistService {

    @Autowired
    private WishlistDao wishlistDao;

    public List<WishlistDto> select(WishlistDto wishlistDto) {
        return wishlistDao.select(wishlistDto);
    }

    public Integer selectWishlist(WishlistDto wishlistDto) {
        return wishlistDao.selectWishlist(wishlistDto);
    }

    public Integer wishlistWork(Integer memberNumber, WishlistPostDto wishlistPostDto){
        WishlistDto wishlistDto = new WishlistDto();
        wishlistDto.setProduct_number(wishlistPostDto.getProductNumber());
        wishlistDto.setMember_number(memberNumber);

        if(wishlistPostDto.getIsWishlist() == false){
            return wishlistDao.insertWishlist(wishlistDto);
        }

        return wishlistDao.deleteWishlist(wishlistDto);
    }

    public Integer insertWishlist(WishlistDto wishlistDto) {
        return wishlistDao.insertWishlist(wishlistDto);
    }

    public Integer deleteWishlist(WishlistDto wishlistDto) {
        return wishlistDao.deleteWishlist(wishlistDto);
    }


}
