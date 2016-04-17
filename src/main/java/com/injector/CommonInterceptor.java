package com.injector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class CommonInterceptor extends HandlerInterceptorAdapter {

	private final Logger logger = Logger.getLogger(CommonInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		logger.debug(String.format("interceptor: uri=%s",
				request.getRequestURI()));
		if (request.getHeader("X-PJAX") == null
				&& request.getMethod().equals("GET")) {
			logger.debug(String.format("interceptor: redirect=%s", request
					.getServletContext().getContextPath()));
			response.sendRedirect(request.getServletContext().getContextPath());
			return false;
		}
		return super.preHandle(request, response, handler);
	}

}