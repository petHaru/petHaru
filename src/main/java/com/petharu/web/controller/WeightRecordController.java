package com.petharu.web.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.petharu.web.dto.WeightStats;
import com.petharu.web.entity.Pet;
import com.petharu.web.entity.Weight;
import com.petharu.web.service.WeightRecordService;

@Controller("WeightRecordController")
@RequestMapping("/management/weightRecord/")
public class WeightRecordController {
	
	@Autowired
	private WeightRecordService service;
	
	//petList조회
	@RequestMapping("petList")
	public String petList(Model model) {
		
		List<Pet> list = service.getList(1);
		model.addAttribute("list", list);
		
		return "management.weightRecord.petList";
	}
	
	//weightList조회
	@RequestMapping("weightList")
	public String weightList(Model model,
							@RequestParam(name="petId") int petId) {
		//펫정보
		Pet pet = service.getPet(petId);
		
		//펫 Weight관련 정보
		List<Weight> weightList = service.getWeightList(petId);
		
		model.addAttribute("pet", pet);
		model.addAttribute("weightList", weightList);
		
		return "management.weightRecord.weightList";
	}
	
	//reg조회
	@RequestMapping("reg")
	public String reg() {
		
		return "management.weightRecord.reg";
	}
	
	//체중등록
	@PostMapping("reg")
	public String reg(int petId,
					String date,
					String time,
					float kg) {
		
		Weight weight = new Weight();
		weight.setPetId(petId);
		weight.setMeasureDate(date);
		weight.setMeasureTime(time);
		weight.setKg(kg);
		
		weight.toString();
		service.insert(weight);
		
		
		return "redirect:weightList?petId="+petId;
	}
	
	
	//edit조회
	@RequestMapping("edit")
	public String edit(Model model,
					@RequestParam(name="id") int id) {
		
		Weight weight = new Weight();
		weight = service.getWeight(id);
		
		model.addAttribute("weight", weight);
		
		return "management.weightRecord.edit";
	}
	
	//체중기록 수정
	@PostMapping("edit")
	public String edit( int id,
						int petId,
						String date,
						String time,
						float kg) {
		
		Weight weight = new Weight();
		weight.setId(id);
		weight.setMeasureDate(date);
		weight.setMeasureTime(time);
		weight.setKg(kg);
		
		service.update(weight);
		
		return "redirect:weightList?petId="+petId;
	}
	
	//체중기록 삭제
	@GetMapping("del")
	public String delete(@RequestParam(name="petId") int petId,
						 @RequestParam(name="id") int id) {
		
		service.delete(id);
		
		return "redirect:weightList?petId="+petId;
	}
	
	//stats조회
	@RequestMapping("stats")
	public String stats(Model model,
						@RequestParam(name="petId") int petId) {
		
		//주차별 평균
		List<WeightStats> weightStats = service.getWeekAvg(petId);
		
		model.addAttribute("weightStats", weightStats);
		
		return "management.weightRecord.stats";
	}
	
	@RequestMapping("chart")
	public String chart() {
		
		return "management.weightRecord.chart";
	}
}
