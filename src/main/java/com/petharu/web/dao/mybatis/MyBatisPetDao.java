package com.petharu.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.petharu.web.dao.PetDao;
import com.petharu.web.dao.WeightRecordDao;
import com.petharu.web.entity.Pet;

@Repository
public class MyBatisPetDao implements WeightRecordDao,PetDao {

	private SqlSession sqlSession;
	private WeightRecordDao mapper;
	private PetDao petMapper;
	
	@Autowired
	public MyBatisPetDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		mapper = sqlSession.getMapper(WeightRecordDao.class);
	}
	
	@Override
	public List<Pet> getList(int memberId) {
		return mapper.getList(memberId);
	}

	@Override
	public int insert(Pet pet) {
		
		return petMapper.insert(pet);
	}

	@Override
	public int update(Pet pet) {

		return petMapper.update(pet);
	}

	@Override
	public int delete(int id) {
		
		return petMapper.delete(id);
	}

}
