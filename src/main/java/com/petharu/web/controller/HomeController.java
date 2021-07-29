package com.petharu.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("HomeController")
@RequestMapping("/")
public class HomeController {

	@RequestMapping("/")
	public String login() {
		return "/login";
	}
}
