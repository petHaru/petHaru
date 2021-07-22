package com.petharu.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petharu.web.dao.WeightRecordDao;
import com.petharu.web.entity.Pet;

@Service
public class WeightRecordServiceimp implements WeightRecordService {

	@Autowired
	private WeightRecordDao dao;
	
	@Override
	public List<Pet> getList(int memberid) {
		
		return dao.getList(memberid);
	}

}
