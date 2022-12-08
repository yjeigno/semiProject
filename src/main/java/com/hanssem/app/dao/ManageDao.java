package com.hanssem.app.dao;

import com.hanssem.app.dto.MemberDto;
import com.hanssem.app.dto.WishProduct;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class ManageDao {

    @Autowired
    private SqlSession session;

    private static String namespace = "com.hanssem.app.dao.userManageMapper.";

    /** 세션id 정보로 회원번호 가져오기*/
    public Integer getUserNo(String member_id) {
        return session.selectOne(namespace+"getUserNo", member_id);
    }
    /** 비밀번호 확인*/
    public Integer checkPassword(MemberDto member) {
        return session.selectOne(namespace+"checkPw", member);
    }
    /** 회원 탈퇴*/
    public int withdrawMember(MemberDto member) {
        return session.delete(namespace+"withdrawUser", member);
    }
    /** 회원 위시리스트 상품번호리스트 불러오기*/
    public List<WishProduct> getUserWishList(String member_id){
        return session.selectList(namespace+"getUserWishlist", member_id);
    }
    /** 로그인회원의 위시리스트에서 해당상품 삭제*/
    public int removeWish(Map map) {
        return session.delete(namespace+"removeFromWishlist", map);
    }

    /** 로그인회원의 위시리스트에 해당상품 추가*/
    public int addWish(Map map) {
        return session.insert(namespace+"addWishlist", map);
    }

    /** 마이페이지 내정보 불러오기*/
    public MemberDto getUserInfo(String member_id) {
        return session.selectOne(namespace+"getUserInfo", member_id);
    }

    /** 마이페이지 내정보 수정하기*/
    public int renewUserInfo(MemberDto member_info){
        return session.update(namespace+"renewUserInfo", member_info);
    }
}
