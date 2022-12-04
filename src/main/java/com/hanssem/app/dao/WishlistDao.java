package com.hanssem.app.dao;

import com.hanssem.app.dto.WishlistDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class WishlistDao {

    @Autowired
    SqlSession session;

    private String namespace = "com.hanssem.app.dao.WishlistMapper.";

    public List<WishlistDto> select(WishlistDto wishlistDto) {
        return session.selectList(namespace+"select", wishlistDto);
    }
    public Integer selectWishlist(WishlistDto wishlistDto) {
        return session.selectOne(namespace+"selectWishlist", wishlistDto);
    }

    public Integer insertWishlist(WishlistDto wishlistDto) {
        return session.insert(namespace+"insertWishlist", wishlistDto);
    }

    public Integer deleteWishlist(WishlistDto wishlistDto) {
        return session.delete(namespace+"deleteWishlist", wishlistDto);
    }
}
