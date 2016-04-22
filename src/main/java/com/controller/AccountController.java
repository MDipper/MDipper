package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.UserService;

@Controller
@RequestMapping("/account")
public class AccountController {
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/login")
	public String login() {
		return "views/login";
	}

	@RequestMapping(value = "/register")
	public String register() {

		return "views/register";
	}

}
