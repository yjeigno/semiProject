package com.hanssem.app.service;

import com.hanssem.app.dao.RegisterDao;
import com.hanssem.app.dto.MemberDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;

@Service
public class RegisterService {

    @Autowired
    private static RegisterDao registerDao;

    public int registerMember(MemberDto memberDto) throws Exception {

        String memberMail = memberDto.getRegi_mail_id() + "@" + memberDto.getRegi_mail_domain();
        memberDto.setMember_email(memberMail);
        String memberAddress = memberDto.getRegi_address() + " " + memberDto.getRegi_address_detail();
        memberDto.setMember_address(memberAddress);
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        memberDto.setMember_register_date(timestamp);
        memberDto.setMember_login_date(timestamp);

        return registerDao.insertMember(memberDto);
    }

//    아이디 중복체크

    public static int idCheck(MemberDto memberDto) throws Exception{
        return registerDao.selectMember(memberDto);
    }


}