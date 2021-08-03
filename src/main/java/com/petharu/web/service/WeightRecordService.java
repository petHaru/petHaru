package com.petharu.web.service;

import java.util.List;

import com.petharu.web.dto.WeightStats;
import com.petharu.web.dto.WeightWithWeek;
import com.petharu.web.entity.Pet;
import com.petharu.web.entity.Weight;

public interface WeightRecordService {
	
	List<Pet> getList(int memberId);
	Pet getPet(int petId);
	List<Weight> getWeightList(int petId);
	List<WeightWithWeek> getWeekWeightList(int petId, int week);
	Weight getWeight(int id);
	List<WeightStats> getWeightStats(int petId);
	List<WeightStats> getWeekAvg(int petId);
	int insert(Weight weight);
	int update(Weight weight);
	int delete(int id);

}
