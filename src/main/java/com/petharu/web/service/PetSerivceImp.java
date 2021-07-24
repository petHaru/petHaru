package com.petharu.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petharu.web.dao.mybatis.MyBatisPetDao;
import com.petharu.web.entity.Pet;
@Service
public class PetSerivceImp implements PetService {
	
	@Autowired
	private MyBatisPetDao dao;

	@Override
	public List<Pet> getList(int memberid) {
		
		return dao.getList(memberid);
	}

	@Override
	public int insert(Pet pet) {
		
		return dao.insert(pet);
	}

	@Override
	public int update(Pet pet) {
		
		return dao.update(pet);
	}

	@Override
	public int delete(int id) {
		
		return dao.delete(id);
	}

}
