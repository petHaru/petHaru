package com.petharu.web.service;

import java.util.List;

import com.petharu.web.entity.Pet;

public interface WeightRecordService {
	
	List<Pet> getList(int memberid);

}
