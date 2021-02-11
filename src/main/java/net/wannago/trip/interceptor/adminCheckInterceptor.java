package net.wannago.trip.interceptor;

import java.io.PrintWriter;

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
		
		//관리자 아닐시 접근막기
		if(admin == null) {
			
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.print("<script>");
		out.print("alert('올바른 접근이 아닙니다');");
		out.print("history.go(-1);");
		out.print("</script>");
	
			return false;
		}
		return true;
	}
}
