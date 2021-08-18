package com.petharu.web.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petharu.web.entity.Pet;

@Controller("MyHomeController")
@RequestMapping("/myHome/")
public class MyHomeController {
	
	@RequestMapping("list")
	public String list() {
		
		return "myHome.list";
	}

}
