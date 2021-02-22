package net.wannago.member.controller;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	    //회원수정 페이지
		@GetMapping("/memberUpdateView")
		public String registerUpdateView() throws Exception{
			
			return "member/memberUpdateView";
		}

		//회원수정
		@PostMapping("/memberUpdate")
		public String registerUpdate(MemberVO vo, HttpSession session) throws Exception{
			
			
			int result = ms.MemberUpdate(vo);
			if(result == 1) {
				 session.setAttribute("memberInfo", vo);
			}
			
			System.out.println(vo);
			
			
			return "redirect:/";
	     }
		
		// 회원 탈퇴 get
		@GetMapping("/memberDeleteView")
		public String memberDeleteView() throws Exception{
			
			return "member/memberDeleteView";
		}
		
		
		// 회원 탈퇴 post
		@PostMapping("memberDelete")
		public String memberDelete(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception{
			
			    // 세션에 있는 member를 가져와 member변수에 넣기.
			       MemberVO member = (MemberVO)session.getAttribute("memberInfo"); 
			   // 세션에있는 비밀번호 
			       String sessionPass = member.getMpw(); 
			   // vo로 들어오는 비밀번호 
		           String voPass = vo.getMpw();
			
			 if(!(sessionPass.equals(voPass))) { 
				 rttr.addFlashAttribute("msg", false);
				 
				 return "redirect:/member/memberDeleteView";
			 }
			 
			ms.MemberDelete(vo);
			
			return "redirect:/member/signOut";
		}
		
		
		
	
		
		
	}

	
	
	


