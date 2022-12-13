package com.hanssem.app.service;

import com.hanssem.app.dao.WishlistDao;
import com.hanssem.app.dto.WishPartialDeleteDto;
import com.hanssem.app.dto.WishlistDto;
import com.hanssem.app.dto.WishlistPostDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


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

    // 하나씩 삭제
    public Integer wishlistWork(Integer memberNumber, WishlistPostDto wishlistPostDto){
        WishlistDto wishlistDto = new WishlistDto();
        wishlistDto.setProduct_number(wishlistPostDto.getProductNumber());
        wishlistDto.setMember_number(memberNumber);

        if(!wishlistPostDto.getIsWishlist()){
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

    // 선택 삭제
    public Integer partialDelete(List<Integer> productNumbers,Integer memberNumber){
        WishPartialDeleteDto dto = new WishPartialDeleteDto();
        dto.setMemberNumber(memberNumber);
        dto.setProductNumbers(productNumbers);

        return wishlistDao.partialDelete(dto);
    }

    // 전체삭제
    public Integer deleteAllWishlist(Integer memberNumber){
        return wishlistDao.deleteAllWishlist(memberNumber);
    }

    public Integer getMemberNumber(String member_id){
        return wishlistDao.getMemberNumber(member_id);
    }
}
