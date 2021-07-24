package com.petharu.web.dao;

import java.util.List;

import com.petharu.web.entity.Pet;

public interface PetDao {
	
	List<Pet> getList(int memberId);
	
	int insert(Pet pet);
	int update(Pet pet);
	int delete(int id);

}
