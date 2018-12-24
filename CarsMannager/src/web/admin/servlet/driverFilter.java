package web.client.filter;

import domain.Driver;
import domain.User;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class driverFilter implements Filter {

	public void init(FilterConfig filterConfig) throws ServletException {

	}

	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
		// 1 强制转换
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;

		// 2判断是否具有权限
		Driver driver = (Driver) request.getSession().getAttribute("driver");

		if (driver != null ) {
			// 3.放行
			chain.doFilter(request, response);
			return;
		}

        response.getWriter().write("权限不足");

	}

	public void destroy() {

	}

}
