package net.wannago.trip.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import net.wannago.admin.vo.adminVO;

public class adminCheckInterceptor extends HandlerInterceptorAdapter{

	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		System.out.println("admin check : "+request.getSession().getAttribute("admin"));
		adminVO admin = (adminVO) request.getSession().getAttribute("admin");
		/* RequestDispatcher rd = request.getRequestDispatcher("/admin/adminPage"); */
		String msg = null;
		
		if(admin == null) {
		msg = "관리자만 접근 가능합니다.";
		request.setAttribute("msg", msg);
		System.out.println("여기출력");
		//여기서부터 해결하기
		response.sendRedirect("/");
		/* rd.forward(request, response); */
			return false;
		}
		return true;
	}
}
