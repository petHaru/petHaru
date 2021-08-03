package com.petharu.web.dao;

import org.springframework.stereotype.Repository;

import com.petharu.web.entity.Member;

@Repository
public interface MemberDao {
	
	
	
	int insert(Member member);
}
