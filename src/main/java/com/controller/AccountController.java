package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.connector.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.User;
import com.service.UserService;

@RequestMapping("/account")
@Controller
public class AccountController {
	@Autowired
	UserService userService;

	@RequestMapping(value = "/login")
	public String login() {
		return "views/login";
	}

	@RequestMapping(value = "/register")
	public String register() {
		return "views/register";
	}

	@RequestMapping(value = "/loginpost" , method = RequestMethod.POST)
	public String loginpost(@RequestParam(value = "username") String username,
			@RequestParam(value = "password") String password,HttpServletRequest request) {
		User user = new User(username, password);
		if (userService.checkUsernamePassword(user) != null) {
			
			request.setAttribute("userId",username);
			return "views/index";
		}
		return "views/login";
	}
	
}