package kosta.travel.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(
			HttpServletRequest request, HttpServletResponse response, Object handler
			) throws Exception{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		if(session.getAttribute("login") == null){
			saveDest(request);
			response.sendRedirect("/login_form");
	         response.setContentType("text/html;charset=UTF-8");
	         out.println("<script>");
	         out.println("alert('로그인이 필요한 페이지 입니다.');");
	         out.println("</script>");
			return false;
		}
		return true;
	}
	
	//로그인 성공 후 원래의 URI 로 이동 하기 위해서 본래의 uri 저장해야한다.
	private void saveDest(HttpServletRequest request){
		String uri = request.getRequestURI();
		String query = request.getQueryString();
		
		if(query == null || query.equals("null")){
			query = "";
		} else{
			query = "?" + query;
		}
		
		if(request.getMethod().equals("GET")){
			request.getSession().setAttribute("dest", uri + query);
		}
	}
	
}
