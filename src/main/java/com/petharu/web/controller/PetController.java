package com.petharu.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petharu.web.entity.Pet;
import com.petharu.web.service.PetService;

@Controller("PetController")
@RequestMapping("/management/pet/")
public class PetController {
	
	@Autowired
	private PetService service;
	
	@RequestMapping("list")
	public String petList(Model model) {
		
		List<Pet> list = service.getList(1);
		model.addAttribute("list", list);
		
		return "management.pet.list";
	}
	
	@RequestMapping("reg")
	public String reg() {
		
		return "management.pet.reg";
	}
	
	@RequestMapping("edit")
	public String edit() {
		
		return "management.pet.edit";
	}
	
	@RequestMapping("del")
	public String delete(int id) {
		
		return "management.pet.del";
	}
}
