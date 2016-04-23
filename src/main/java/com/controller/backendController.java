package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baomidou.kisso.SSOHelper;
import com.baomidou.kisso.SSOToken;

@Controller
@RequestMapping("/backend")
public class backendController {
	@Autowired
	HttpServletRequest request;
	
	private static Logger logger = Logger.getLogger(UserController.class);
	
	@RequestMapping(value = "/notice")
	public String notice() {
		return "views/notice";
	}
	@RequestMapping(value = "/usermanage")
	public String usermanage() {
		return "views/usermanage";
	}	
	@RequestMapping(value = "/index")
	public String index() {
		SSOToken st = SSOHelper.getToken(request);
		if (st != null) {
			request.setAttribute("userid", st.getUid());
			logger.debug(String.format("st.getUid()=%s",st.getUid()));
		}
		return "views/index";
	}
	
}
