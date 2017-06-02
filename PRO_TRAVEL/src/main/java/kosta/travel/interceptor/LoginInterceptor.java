package kosta.travel.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	private static final String LOGIN = "login";
	
	@Override
	public void postHandle(
			HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView
			) throws Exception{
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		ModelMap modelMap = modelAndView.getModelMap();
		System.out.println(modelMap);
		Object usersVO = modelMap.get("usersVO");
		System.out.println(usersVO);
		System.out.println(usersVO);

		if(usersVO != null){
			session.setAttribute(LOGIN, usersVO);
			response.sendRedirect("/test");
		}else{
	         response.setContentType("text/html;charset=utf-8");
	         out.println("<script>");
	         out.println("alert('Please Check your ID or Password');");
	         out.println("location.href='/login_form';");
	         out.println("</script>");
	         
	         out.close();
		}
	}
	
	@Override
	public boolean preHandle(
			HttpServletRequest request, HttpServletResponse response, Object handler
			) throws Exception{
		HttpSession session = request.getSession();
		
		if(session.getAttribute(LOGIN) != null){
			session.removeAttribute(LOGIN);
		}
		return true;
	}
}
