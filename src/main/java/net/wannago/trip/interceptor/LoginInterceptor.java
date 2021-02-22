package net.wannago.trip.interceptor;


import java.util.Date;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import net.wannago.member.dao.BanIPDAO;
import net.wannago.member.vo.BanIPVO;
import net.wannago.member.vo.LoginDTO;
import net.wannago.member.vo.MemberVO;

public class LoginInterceptor extends HandlerInterceptorAdapter{

	@Inject
	BanIPDAO dao;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		if(session.getAttribute("memberInfo") != null) {
			session.removeAttribute("memberInfo");
		}
		
		String ip = getIP(request);
		System.out.println("request IP : " + ip);
		
		
		BanIPVO banVO = dao.getBanIPVO(ip);
		if(banVO != null && banVO.getCnt() >= 5) {
			System.out.println("ban ip");
			long saveTime = getTime(banVO.getBandate());
			if(saveTime > 0) {
				RequestDispatcher rd = request.getRequestDispatcher("/member/signin");
				request.setAttribute("message", "일정 시간동안 로그인 할 수 없습니다.");
				request.setAttribute("time",saveTime);
				rd.forward(request, response);
				return false;
			}else {
				System.out.println("제한시간 초기화");
				dao.removeBanIP(ip);
			}
		}
		return true;
	}
	
	
	// 처음 로그인 : 리턴한 모델의 값을 가지고 확인 해줘야하니, postHandle
	@Override
	public void postHandle(HttpServletRequest request, 
						   HttpServletResponse response, 
						   Object handler,
						   ModelAndView mav) throws Exception {
		
		
		
		
		LoginDTO dto = (LoginDTO)mav.getModel().get("loginDTO");
		MemberVO vo = (MemberVO)mav.getModel().get("memberInfo");
		
		
		

		System.out.println("LodingIntercepttor : "+dto);
		System.out.println("LodingIntercepttor : "+vo);
		// 값이 들어가있으면 아이디와 비밀번호 일치한걸 넘겨주겠지
		
		//
		String ip = getIP(request);
		BanIPVO banIP = dao.getBanIPVO(ip);
		
		
	if(vo != null) { // 로그인 성공
			
		HttpSession session = request.getSession();
			session.setAttribute("memberInfo", vo);
			 // 로그인정보를 session에 넣고. MemberController에 있는 로그인 mvc를 가져옴.
			
				if(dto.isMemberCookie()) {
					Cookie cookie = new Cookie("signInCookie",vo.getMid());
					cookie.setPath("/");
					cookie.setMaxAge(60 * 60 * 24 * 15); //약 25분. 세션 유지시간
					response.addCookie(cookie);
				}
				if(banIP != null) {
					System.out.println("로그인 성공 ban ip 삭제");
					dao.removeBanIP(ip);
				}
				
				
				
		
	}else {  // 로그인 실패
			
			int count = 5;
			
			if(banIP == null) {
				System.out.println("최초 실패");
				dao.signInFail(ip);
				count = count - 1;
			}else {
				System.out.println("중복 실패 : " + banIP);
				dao.updateBanIPCnt(ip);
				count = count-(banIP.getCnt()+1);
			}
			String message = "";
			if(count > 0) {
				message = "회원 정보가 일치하지 않습니다. 남은 시도 횟수: "+count;
			}else {
				message = "10분동안 IP가 차단됩니다.";
			}
			
			mav.getModel().remove("memberInfo");
			mav.getModel().remove("loginDTO");
			
			//mav.addObject("message","회원정보가 일치하지 않습니다.");
			mav.addObject("message",message);
			mav.setViewName("/member/signin"); //다시 로그인페이지
		}
	}

	//getIP
	public String getIP(HttpServletRequest request) {
			String ip = request.getHeader("X-forwarded-for");
			System.out.println("X-forwarded-for : " + ip);
			if(ip == null) {
				ip = request.getHeader("Proxy-Client-IP");
				System.out.println("Proxy-Client-IP : " + ip);
			}
			if(ip == null) {
				ip = request.getHeader("WL-Proxy-Client-IP");
				System.out.println("WL-Proxy-Client-IP : " + ip);
			}
			if(ip == null) {
				ip = request.getHeader("HTTP-X-FORWARDED-FOR");
			System.out.println("HTTP-X-FORWARDED-FOR : " + ip);
			}
			if(ip == null){
				ip = request.getRemoteAddr();
				System.out.println("REMOTE ip : " + ip);
			}
		return ip;
	}
	
	//getTime
	public long getTime(Date bandate) {
		int limit = 1000*60*10; // 10분
		return limit-(System.currentTimeMillis() - bandate.getTime());
	}


	
	
}
