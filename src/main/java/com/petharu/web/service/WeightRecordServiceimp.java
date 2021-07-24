package com.petharu.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petharu.web.dao.WeightRecordDao;
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
	public int insert(Weight weight) {
		
		return dao.insert(weight);
	}

}
