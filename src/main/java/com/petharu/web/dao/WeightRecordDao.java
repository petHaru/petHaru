package com.petharu.web.dao;

import java.util.List;

import com.petharu.web.entity.Pet;

public interface WeightRecordDao {
	List<Pet> getList(int memberId);
}
