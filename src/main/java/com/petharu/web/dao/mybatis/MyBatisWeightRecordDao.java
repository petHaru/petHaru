package com.petharu.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.petharu.web.dao.WeightRecordDao;
import com.petharu.web.entity.Pet;
import com.petharu.web.entity.Weight;

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
	
	@Override
	public Pet getPet(int petId) {
		return mapper.getPet(petId);
	}

	@Override
	public List<Weight> getWeightList(int petId) {
		return mapper.getWeightList(petId);
	}

	@Override
	public int insert(Weight weight) {
		return mapper.insert(weight);
	}



}
