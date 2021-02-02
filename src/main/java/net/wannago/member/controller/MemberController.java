package net.wannago.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("member/")
public class MemberController {
    //회원가입
	@RequestMapping("signup")
	String showJoin() {
		
		return "member/signup";
	}
	
	@RequestMapping("signin")
	String showLogin() {
		
		return "member/signin";
	}
}
