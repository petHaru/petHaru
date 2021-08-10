package com.petharu.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petharu.web.dao.mybatis.MyBatisMemberDao;
import com.petharu.web.entity.Member;

@Service
public class MemberServiceImp implements MemberService {

	@Autowired
	private MyBatisMemberDao dao;
	
	@Override
	public int insert(Member member) {
		// TODO Auto-generated method stub
		return dao.insert(member);
	}

}
