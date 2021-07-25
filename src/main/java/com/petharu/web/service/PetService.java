package com.petharu.web.service;

import java.util.List;

import com.petharu.web.entity.Pet;

public interface PetService {
	
	List<Pet> getList(int memberid);
	
	int insert(Pet pet);
	int update(Pet pet);
	int delete(int id);

}
