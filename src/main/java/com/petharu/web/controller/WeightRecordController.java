package com.petharu.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/management/weightRecord/")
public class WeightRecordController {
	
	@RequestMapping("test")
	public String test() {
		
		return "management.weightRecord.test";
	}
	
	@RequestMapping("petList")
	public String petList() {
		
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
