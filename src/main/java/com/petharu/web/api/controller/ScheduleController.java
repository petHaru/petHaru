package com.petharu.web.api.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.petharu.web.entity.Schedule;
import com.petharu.web.service.ScheduleService;

@RestController("apiScheduleController")
@RequestMapping("/api/schedule/")
public class ScheduleController {

	@Autowired
	private ScheduleService service;
	
	@RequestMapping("list")
	public Map<String, Object> list(
			@RequestParam(name = "month") String month,
			@RequestParam(name = "memberId") int memberId,
			Model model) {

		Map<String, Object> map = new HashMap<>();
		
		List<Schedule> list = service.getList(month, memberId);
		
		map.put("list", list);
		
		return map;
	}
}
