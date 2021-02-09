package net.wannago.trip.interceptor;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import net.wannago.member.service.MemberService;
import net.wannago.member.vo.MemberVO;

public class SignUpInterceptor extends HandlerInterceptorAdapter{

	@Inject
	MemberService ms;

	@Override
	public boolean preHandle(HttpServletRequest request, 
			                HttpServletResponse response, 
			                Object handler)
			throws Exception {
		
		System.out.println("Sign Up Interceptor");
		
		// 확인1 :  비밀번호가 넘어오는지 확인
		
        String mpw = request.getParameter("mpw");
        String repw = request.getParameter("repw");
        
        RequestDispatcher rd = request.getRequestDispatcher("/member/signup");
        String message = "";
        
        if(!mpw.equals(repw)) {
        	message = "비밀번호가 일치하지 않습니다";
        	request.setAttribute("message", message);
        	rd.forward(request, response);
        	System.out.println("비밀번호일치 노노");
        	// 일치하지않으니깐 가입이 되면 안됨. controller에 요청을 보내면 안됨.
        	return false;
        }
        
        
        // 확인2 :  아이디 중복 안됨 
        // 사용자 아이디가 기존 테이블에 존재하는지 알아보기.
        String mid = request.getParameter("mid"); 
        System.out.println("Request Parma mid : "+mid);
        MemberVO vo = ms.getMemberById(mid);
        
        if(vo != null) {
        	message = mid+"는 이미 존재하는 아이디입니다.";
        	request.setAttribute("message", message);
        	rd.forward(request, response);
        	System.out.println("이미있음");
        	return false;
        }
		
		return true; //true면 호출
	}
	
	
	
}
