package net.wannago.trip.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import net.wannago.admin.vo.adminDTO;
import net.wannago.admin.vo.adminVO;

public class adminLoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView mav) throws Exception {
		
		adminDTO dto = (adminDTO) mav.getModel().get("adminDTO");
		adminVO vo = (adminVO) mav.getModel().get("adminVO");
		
	
		System.out.println("interceptor 호출 : "+dto+" : "+vo);
		
		
		
		//로그인 확인
		if(vo != null) {
			System.out.println("관리자 로그인 성공");
			HttpSession session = request.getSession();
			session.setAttribute("admin", vo);
			
		}else {
			System.out.println("로그인실패");
			
			mav.getModel().remove("adminDTO");
			mav.getModel().remove("adminVO");
			
			mav.setViewName("redirect:/adminSignin");
		}
		
		
		
	}
	

	

}
