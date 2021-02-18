package net.wannago.trip.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import net.wannago.member.vo.MemberVO;

public class ReservationInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle
	(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		MemberVO memberInfo = (MemberVO) request.getSession().getAttribute("memberInfo");
		
		System.out.println(memberInfo);
		if(memberInfo == null) {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.print("<script>");
		out.print("alert('호텔 예약은 로그인 된 상태에서만 가능합니다');");
		out.print("history.go(-1);");
		out.print("</script>");
	
			return false;
		}
		
		return true;
	}

	
	
	
}
