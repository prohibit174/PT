package kosta.travel.interceptor;

import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import kosta.travel.domain.UsersVO;
import kosta.travel.service.UserService;

public class AuthInterceptor extends HandlerInterceptorAdapter {
	@Inject
	private UserService service;
	@Override
	public boolean preHandle(
			HttpServletRequest request, HttpServletResponse response, Object handler
			) throws Exception{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		if(session.getAttribute("login") == null){
			saveDest(request);
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			if(loginCookie != null){
				UsersVO usersVO = service.checkLoginBefore(loginCookie.getValue());
				
				if(usersVO != null){
					session.setAttribute("login", usersVO);
					return true;
				}
			}
			response.sendRedirect("/login_form");
	         response.setContentType("text/html;charset=UTF-8");
	         out.println("<script>");
	         out.println("alert('�α����� �ʿ��� ������ �Դϴ�.');");
	         out.println("</script>");
			return false;
		}
		return true;
	}
	
	//�α��� ���� �� ������ URI �� �̵� �ϱ� ���ؼ� ������ uri �����ؾ��Ѵ�.
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
