package interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AdminInterceptor extends HandlerInterceptorAdapter{

	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, 
			Object handler) throws Exception {
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("user") == null && 1 == 0) {
			response.sendRedirect(request.getContextPath() + "/home.htm");
			return false;
		}
		
		session.removeAttribute("user");
		return true;
		
	}
}
