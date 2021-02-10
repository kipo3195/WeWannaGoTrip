package net.wannago.admin.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import net.wannago.admin.service.adminServiceImpl;
import net.wannago.admin.vo.adminDTO;
import net.wannago.admin.vo.adminVO;

@Controller
public class AdminController {

	@Inject
	adminServiceImpl as;
	
	@RequestMapping("/adminSignin")
	public String adminSignin() {
		
		return "admin/adminSignin";
	}
	
	@PostMapping("signInAdmin")
	public ModelAndView signInAdmin(
			adminDTO dto,
			ModelAndView mav) {
			
		adminVO vo = as.adminCheck(dto);
		
		System.out.println("controller " + vo);
		
		mav.addObject("adminVO", vo);
		mav.addObject("adminDTO", dto);
		
		mav.setViewName("redirect:/");
		//로그인 성공하면  여기 아니면 인터셉터
		return mav;
	}
	
	@GetMapping("admin/adminPage")
	public void adminPage() {
		
	}
	
	@GetMapping("admin/logout")
	public String adminLogout(HttpSession session) {
		session.removeAttribute("admin");
		
		return "redirect:/";
	}
	
}
