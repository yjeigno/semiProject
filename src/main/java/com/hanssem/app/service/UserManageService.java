package com.hanssem.app.service;

import com.hanssem.app.dao.ManageDao;
import com.hanssem.app.dto.MemberDto;
import com.hanssem.app.dto.WishProduct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class UserManageService {
    @Autowired
    ManageDao manageDao;

    public Integer getUserNo(String member_id) {
        return manageDao.getUserNo(member_id);
    }
    public boolean checkUserPw(MemberDto member) {
        Integer checker = manageDao.checkPassword(member);
        return checker==1?true:false;
    }
    public int userWithdraw(MemberDto member) {
        return manageDao.withdrawMember(member);
    }
    public List<WishProduct> getUserWishList(String member_id) {
        return manageDao.getUserWishList(member_id);
    }

    public int removeWish(Map map) {
        return manageDao.removeWish(map);
    }
    public int addWish(Map map){
        return manageDao.addWish(map);
    }
}
