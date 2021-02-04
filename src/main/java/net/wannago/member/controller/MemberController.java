package net.wannago.member.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import net.wannago.member.service.MemberService;
import net.wannago.member.vo.LoginDTO;
import net.wannago.member.vo.MemberVO;

@Controller
@RequestMapping("member/")
public class MemberController {
    
	@Inject
	MemberService ms;
	
	
	@RequestMapping("signup")
	public String signup() {
		
		return "member/signup";
	}
	
	@RequestMapping("signin")
	public String signin() {
		
		return "member/signin";
	}
	
	// 회원가입
	@PostMapping("signUpPost")
	public String signUpPost(
					MemberVO vo,
					RedirectAttributes rttr) throws Exception{
		
		ms.signup(vo);
		rttr.addFlashAttribute("message","회원가입 성공♬");
		
		return "redirect:/member/signin";
			
	}
	
	
	// 로그인
	@PostMapping("signInPost")
	public ModelAndView signInPost(
					ModelAndView mav,
					LoginDTO dto) throws Exception { //로그인 매개변수 3개
		//로그인 처리
		MemberVO vo = ms.signin(dto); //아이디가 일치하면 member정보 있음
		mav.addObject("memberInfo",vo);
		mav.addObject("loginDTO",dto);
		
		System.out.println("controller : "+mav.getModel().get("memberInfo"));
		System.out.println("controller : "+mav.getModel().get("loginDTO"));
		mav.setViewName("redirect:/");
		
		return mav;
	}
	
	@GetMapping("myPage")
	public String myPage() {
		
		return "member/myPage";
	}
	
}
