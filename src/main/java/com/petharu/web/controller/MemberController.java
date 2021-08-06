package com.petharu.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("MemberController")
@RequestMapping("/member/")
public class MemberController {
	
	@RequestMapping("signup")
	public String Signup() {
		return "member.signup";
	}
	

}
