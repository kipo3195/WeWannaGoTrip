package net.wannago.trip.interceptor;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import net.wannago.member.service.MemberService;
import net.wannago.member.vo.MemberVO;


public class CookieCheckInterceptor extends HandlerInterceptorAdapter{

	@Inject
	MemberService ms;

	// 자동로그인
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("memberInfo") != null) {
			System.out.println("사용자 정보 존재");
		 return true;
		}
		
		// signInCookie
			Cookie cookie = WebUtils.getCookie(request, "signInCookie");
				
			if(cookie != null) {
				// ID
				MemberVO mv = ms.getMemberById(cookie.getValue());
				   if(mv != null) {
					  session.setAttribute("userInfo", mv);
					}
			 }
		
		return true;
	 }
	
	
	
}
