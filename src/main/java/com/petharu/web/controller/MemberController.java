package com.petharu.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petharu.web.entity.Member;
import com.petharu.web.service.MemberService;

@Controller("MemberController")
@RequestMapping("/member/")
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@RequestMapping("signup")
	public String Signup() {
		return "member.signup";
	}
	
	@PostMapping("reg")
	public String Signup(String userId, String password, String email) {
		//암호화 도구
		PasswordEncoder encoder = new BCryptPasswordEncoder();
		//암호화 하고 변수에 담음
		String encodedpwd = encoder.encode(password);
		Member member = new Member();
		member.setUserId(userId);
		member.setPassword(encodedpwd);
		member.setEmail(email);
		service.insert(member);
		return "redirect:/";
	}
	

}
