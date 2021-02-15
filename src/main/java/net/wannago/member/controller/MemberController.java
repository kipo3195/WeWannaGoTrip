package net.wannago.member.controller;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import net.wannago.member.service.MemberService;
import net.wannago.member.vo.LoginDTO;
import net.wannago.member.vo.MemberVO;

@Controller
@RequestMapping("member")
public class MemberController {
    
	@Inject
	MemberService ms;

	
	@RequestMapping("/signup")
	public String signup() {
		
		return "member/signup";
	}
	
	@RequestMapping("/signin")
	public String signin() {
		
		return "member/signin";
	}
	
	//@GetMapping("/myPage")
	@RequestMapping("/myPage")
	public String myPage() {
		
		return "member/myPage";
	}
	
	
	
	// 회원가입
	@PostMapping("/signUpPost")
	public String signUpPost(
					MemberVO vo,
					RedirectAttributes rttr) throws Exception{
		
		ms.signup(vo);
		System.out.println("vo :"+vo);
		rttr.addFlashAttribute("message","회원가입 성공♬");
		
		return "redirect:/member/signin";
			
	}
	
	
	// 로그인
	@PostMapping("/signInPost")
	public ModelAndView signInPost(
					ModelAndView mav,
					LoginDTO dto) throws Exception { //로그인 매개변수 3개
		
		//로그인 처리   
		MemberVO vo = ms.signin(dto); //아이디가 일치하면 member정보 있음
		mav.addObject("memberInfo",vo);
		mav.addObject("loginDTO",dto);
		
		ms.signin(dto);
		System.out.println("controller : "+mav.getModel().get("memberInfo"));
		System.out.println("controller : "+mav.getModel().get("loginDTO"));
		
		mav.setViewName("redirect:/");
		
		return mav;
	}
	
	
	// 로그아웃
	@RequestMapping("/signOut")
	public String signOut(
			HttpSession session,
			HttpServletResponse response,
			@SessionAttribute("memberInfo") MemberVO vo,
			@CookieValue(name="signInCookie",required=false)Cookie signInCookie
			)throws Exception{
		
		if(vo != null) {
			session.removeAttribute("memberInfo");
		}
		if(signInCookie != null) {
			System.out.println("cookie name : "+signInCookie.getName());
			System.out.println("cookie value : "+signInCookie.getValue());
			signInCookie.setPath("/");
			signInCookie.setMaxAge(0); //브라우저에서 넘겨받자마자 지워줌
			response.addCookie(signInCookie);
			
		}
	
		return "redirect:/";
	}
	
	
	
	
	
}
