package com.petharu.web.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.petharu.web.dao.mybatis.MyBatisMemberDao;
import com.petharu.web.entity.Member;

public class MemberServiceImp implements MemberService {

	@Autowired
	private MyBatisMemberDao dao;
	
	@Override
	public int insert(Member member) {
		// TODO Auto-generated method stub
		return 0;
	}

}
