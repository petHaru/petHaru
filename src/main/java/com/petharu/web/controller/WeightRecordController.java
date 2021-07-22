package com.petharu.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petharu.web.entity.Pet;
import com.petharu.web.service.WeightRecordService;

@Controller("WeightRecordController")
@RequestMapping("/management/weightRecord/")
public class WeightRecordController {
	
	@Autowired
	private WeightRecordService service;
	
	@RequestMapping("petList")
	public String petList(Model model) {
		
		List<Pet> list = service.getList(1);
		model.addAttribute("list", list);
		
		return "management.weightRecord.petList";
	}
	
	@RequestMapping("reg")
	public String reg() {
		
		return "management.weightRecord.reg";
	}
	
	
	@RequestMapping("weightList")
	public String weightList() {
		
		return "management.weightRecord.weightList";
	}
	
	@RequestMapping("edit")
	public String edit() {
		
		return "management.weightRecord.edit";
	}
	
	@RequestMapping("stats")
	public String stats() {
		
		return "management.weightRecord.stats";
	}
}
