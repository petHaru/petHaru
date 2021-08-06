package com.petharu.web.api.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.petharu.web.dto.WeightStats;
import com.petharu.web.dto.WeightWithWeek;
import com.petharu.web.entity.Pet;
import com.petharu.web.service.WeightRecordService;

@RestController("apiWeightReordController")
@RequestMapping("/api/weightRecord/")
public class WeightRecordController {

	@Autowired
	private WeightRecordService service;
	
	@RequestMapping("list")
	public List<WeightWithWeek> weightList( String sweek,
											String spetId){
		//string to int
		int week = Integer.parseInt(sweek);
		int petId = Integer.parseInt(spetId);
		
		//펫 Weight관련 정보
		List<WeightWithWeek> weightList = service.getWeekWeightList(petId, week);
		
		return weightList;
	}
	
	@RequestMapping("totalChart")
	public List<WeightStats> weightStats( String spetId){
		
		//string to int
		int petId = Integer.parseInt(spetId);
		
		//주차별 평균
		List<WeightStats> weightStats = service.getWeekAvg(petId);
		
		return weightStats;
	}
	
	@RequestMapping("weekChart")
	public List<WeightWithWeek> weekWeightList( String spetId){
		
		//string to int
		int petId = Integer.parseInt(spetId);
		
		//펫 Weight관련 정보
		List<WeightWithWeek> weekWeightList = service.getAllWeekWeightList(petId);
		
		return weekWeightList;
	}
}
