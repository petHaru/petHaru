package com.petharu.web.dao;

import java.util.List;

import com.petharu.web.dto.WeightStats;
import com.petharu.web.entity.Pet;
import com.petharu.web.entity.Weight;

public interface WeightRecordDao {
	List<Pet> getList(int memberId);
	Pet getPet(int petId);
	List<Weight> getWeightList(int petId);
	Weight getWeight(int id);
	List<WeightStats> getWeightStats(int petId);
	List<WeightStats> getWeekAvg(int petId);
	int insert(Weight weight);
	int update(Weight weight);
	int delete(int id);
}
