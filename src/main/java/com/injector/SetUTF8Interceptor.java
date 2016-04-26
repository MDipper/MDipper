package com.injector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 * @author xiezhipegn
 * @Date 2016-4-26
 */
public class SetUTF8Interceptor extends HandlerInterceptorAdapter {
	private final Logger logger = Logger.getLogger(CommonInterceptor.class);

	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) {
		response.setCharacterEncoding("UTF-8");
		logger.debug(String.format("interceptor: response.getCharacterEncoding()=%s",
				response.getCharacterEncoding()));
		return true;
	}
}
