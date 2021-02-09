package net.wannago.trip.interceptor;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import net.wannago.member.vo.LoginDTO;
import net.wannago.member.vo.MemberVO;

public class LoginInterceptor extends HandlerInterceptorAdapter{

	// 처음 로그인 : 리턴한 모델의 값을 가지고 확인 해줘야하니, postHandle
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView mav) throws Exception {
		
		LoginDTO dto = (LoginDTO)mav.getModel().get("loginDTO");
		MemberVO vo = (MemberVO)mav.getModel().get("memberInfo");
		
		System.out.println("LodingIntercepttor : "+dto);
		System.out.println("LodingIntercepttor : "+vo);
		// 값이 들어가있으면 아이디와 비밀번호 일치한걸 넘겨주겠지
		
		
		if(vo != null) { // 로그인 성공
			HttpSession session = request.getSession();
			session.setAttribute("memberInfo", vo);
			 // 로그인정보를 session에 넣고. MemberController에 있는 로그인 mvc를 가져옴.
			
				if(dto.isMemberCookie()) {
					Cookie cookie = new Cookie("signInCookie",vo.getMid());
					cookie.setPath("/");
					cookie.setMaxAge(60 * 60 * 24 * 15);
					response.addCookie(cookie);
				}
		
		
		}else { // 로그인 실패
			
			mav.getModel().remove("memberInfo");
			mav.getModel().remove("loginDTO");
			
			
			mav.setViewName("/member/signin");
		}
		
		
	}

	
	


	
	
}
