package com.petharu.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.petharu.web.dao.WeightRecordDao;
import com.petharu.web.dto.WeightStats;
import com.petharu.web.dto.WeightWithWeek;
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
	public List<WeightWithWeek> getWeekWeightList(int petId, int week) {
		return mapper.getWeekWeightList(petId, week);
	}
	
	@Override
	public List<WeightWithWeek> getAllWeekWeightList(int petId) {
		return mapper.getAllWeekWeightList(petId);
	}
	
	@Override
	public List<WeightStats> getWeightStats(int petId) {
		return mapper.getWeightStats(petId);
	}
	
	@Override
	public List<WeightStats> getWeekAvg(int petId) {
		return mapper.getWeekAvg(petId);
	}

	@Override
	public Weight getWeight(int id) {
		return mapper.getWeight(id);
	}

	@Override
	public int insert(Weight weight) {
		return mapper.insert(weight);
	}

	@Override
	public int update(Weight weight) {
		return mapper.update(weight);
	}

	@Override
	public int delete(int id) {
		return mapper.delete(id);
	}
}
