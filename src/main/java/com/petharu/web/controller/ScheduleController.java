package com.petharu.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/management/schedule/")
public class ScheduleController {
	
	@RequestMapping("calendar")
	public String calendar() {
		
		return "management.schedule.calendar";
	}
	
	@PostMapping("reg")
	public String reg() {
		
	}

}
