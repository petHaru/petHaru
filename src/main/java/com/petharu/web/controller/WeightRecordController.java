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
}
