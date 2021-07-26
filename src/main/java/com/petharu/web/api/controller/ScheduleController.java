package com.petharu.web.api.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
			@RequestParam(name = "m") String month,
			@RequestParam(name = "mi") int memberId,
			Model model) {

		Map<String, Object> map = new HashMap<>();
		
		List<Schedule> list = service.getList(month, memberId);
		
		map.put("list", list);
		
		return map;
	}
	
	/*https://github.com/newlecture/newlecture-react-app/blob/master/src/components/customer/notice/List.js
	 * 뉴렉쌤 코드 보면서 fetch공부하기..*/
	
	@GetMapping("{id}")
	public Schedule get(@PathVariable("id") int id) {	
		return service.get(id);
	}
}
