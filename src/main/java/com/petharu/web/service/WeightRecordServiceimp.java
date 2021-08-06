package com.petharu.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petharu.web.dao.WeightRecordDao;
import com.petharu.web.dto.WeightStats;
import com.petharu.web.dto.WeightWithWeek;
import com.petharu.web.entity.Pet;
import com.petharu.web.entity.Weight;

@Service
public class WeightRecordServiceimp implements WeightRecordService {

	@Autowired
	private WeightRecordDao dao;
	
	@Override
	public List<Pet> getList(int memberid) {
		return dao.getList(memberid);
	}

	@Override
	public Pet getPet(int petId) {
		return dao.getPet(petId);
	}

	@Override
	public List<Weight> getWeightList(int petId) {
		return dao.getWeightList(petId);
	}
	
	@Override
	public List<WeightWithWeek> getWeekWeightList(int petId, int week) {
		return dao.getWeekWeightList(petId, week);
	}
	
	@Override
	public List<WeightWithWeek> getAllWeekWeightList(int petId) {
		return dao.getAllWeekWeightList(petId);
	}
	
	@Override
	public List<WeightStats> getWeightStats(int petId) {
		return dao.getWeightStats(petId);
	}
	
	@Override
	public List<WeightStats> getWeekAvg(int petId) {
		return dao.getWeekAvg(petId);
	}
	
	@Override
	public Weight getWeight(int id) {
		return dao.getWeight(id);
	}

	@Override
	public int insert(Weight weight) {
		return dao.insert(weight);
	}

	@Override
	public int update(Weight weight) {
		return dao.update(weight);
	}

	@Override
	public int delete(int id) {
		return dao.delete(id);
	}

}
