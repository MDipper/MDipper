package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baomidou.kisso.SSOHelper;
import com.baomidou.kisso.SSOToken;
import com.baomidou.kisso.common.encrypt.SaltEncoder;

@Controller
@RequestMapping("/account")
public class AccountController {
	@RequestMapping(value="/login")
	public String login(String loginName, String password){

		return  "/account/login";
	}
	@RequestMapping(value="/register")
	public String register(){
		
		return  "/account/register";
	}

}
