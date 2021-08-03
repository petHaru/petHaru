package com.petharu.web.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.petharu.web.dto.WeightWithWeek;
import com.petharu.web.entity.Pet;
import com.petharu.web.entity.Weight;
import com.petharu.web.service.WeightRecordService;

@RestController("apiWeightReordController")
@RequestMapping("/api/weightRecord/")
public class WeightRecordController {

	@Autowired
	private WeightRecordService service;
	
	@RequestMapping("list")
	public List<WeightWithWeek> weightList( String sweek,
									String spetId){
		
		int week = Integer.parseInt(sweek);
		int petId = Integer.parseInt(spetId);
				
		//펫정보
		Pet pet = service.getPet(petId);
		
		//펫 Weight관련 정보
		List<WeightWithWeek> weightList = service.getWeekWeightList(petId, week);
		System.out.print("웨이트리트스:"+weightList);
		
		return weightList;
	}
}
