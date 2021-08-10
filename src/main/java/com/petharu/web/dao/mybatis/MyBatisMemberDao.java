package com.petharu.web.dao.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.petharu.web.dao.MemberDao;
import com.petharu.web.entity.Member;

@Repository
public class MyBatisMemberDao implements MemberDao {
	
	private SqlSession sqlSession;
	private MemberDao memberMapper;
	
	@Autowired
	public MyBatisMemberDao(SqlSession sqlSession) {
		// TODO Auto-generated constructor stub
		this.sqlSession=sqlSession;
		memberMapper = sqlSession.getMapper(MemberDao.class);
	}

	@Override
	public int insert(Member member) {
		// TODO Auto-generated method stub
		return memberMapper.insert(member);
	}

}
