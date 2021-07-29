package com.petharu.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petharu.web.entity.Schedule;
import com.petharu.web.service.ScheduleService;

@Controller
@RequestMapping("/management/schedule/")
public class ScheduleController {
	
	@Autowired
	private ScheduleService service;
	
	@RequestMapping("calendar")
	public String calendar() {
		
		return "management.schedule.calendar";
	}

	@PostMapping("reg")
	public String reg(String title, String datetime, String content,
						int scheduleTypeId) {
		Schedule schedule = new Schedule();
		schedule.setTitle(title);
		schedule.setContent(content);
		schedule.setDateTime(datetime);
		schedule.setMemberId(2);
		schedule.setScheduleTypeId(scheduleTypeId);
		
		service.insert(schedule);
		return "redirect:calendar";
	}
	
	@GetMapping("del")
	public String delete(int id) {
		service.delete(id);
		
		return "redirect:calendar";
	}
	
	@PostMapping("edit")
	public String edit(Schedule schedule) {
		System.out.println("update schedule");
		service.update(schedule);
		return "redirect:calendar";
		
	}


}
