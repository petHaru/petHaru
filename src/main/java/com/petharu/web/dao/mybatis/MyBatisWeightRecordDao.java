package com.petharu.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.petharu.web.dao.WeightRecordDao;
import com.petharu.web.entity.Pet;

@Repository
public class MyBatisWeightRecordDao implements WeightRecordDao {

	private SqlSession sqlSession;
	private WeightRecordDao mapper;
	
	@Autowired
	public MyBatisWeightRecordDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		mapper = sqlSession.getMapper(WeightRecordDao.class);
	}
	
	@Override
	public List<Pet> getList(int memberId) {
		return mapper.getList(memberId);
	}

}
