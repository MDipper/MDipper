package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.baomidou.kisso.SSOHelper;
import com.baomidou.kisso.SSOToken;
import com.model.User;
import com.service.UserService;

@Controller
@RequestMapping("/backend")
public class BackendController {

	@Autowired
	UserService userService;
	private static Logger logger = Logger.getLogger(UserController.class);

	@RequestMapping(value = "/index",method = RequestMethod.POST)
	public String index(@RequestParam(value = "username") String username,
			@RequestParam(value = "password") String password, HttpServletRequest request, HttpServletResponse response) {
		User user = userService.checkUsernamePassword(new User(username,
				password));
		if (user != null) {
			logger.debug(String.format("login success: name=%s password=%s",
					username, password));
			SSOToken st = new SSOToken(request);
			st.setId(user.getId());
			st.setData(username);
			SSOHelper.setSSOCookie(request, response, st, true);
			return "views/index";
		}
		return "views/login";
	}
}
