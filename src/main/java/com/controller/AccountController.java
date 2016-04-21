package com.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.kisso.SSOHelper;
import com.baomidou.kisso.SSOToken;
import com.model.User;
import com.service.UserService;

@Controller
@RequestMapping("/account")
public class AccountController {
	@Autowired
	private UserService userService;
	
	private static Logger logger = Logger.getLogger(UserController.class);
	private HttpServletRequest request;
	private HttpServletResponse response;

	@RequestMapping(value = "/login" ,method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> login(@RequestParam(value = "username") String username,
			@RequestParam(value = "password") String password) {
		Map<String, Object> map = new HashMap<String, Object>();
		User user =userService.checkUsernamePassword(new User(username, password));
		if (user != null) {
			logger.debug(String.format("login success: name=%s password=%s", username, password));
			map.put("code", "200");
			map.put("msg", "登录成功！");
			SSOToken st = new SSOToken(request);
			st.setId(user.getId());
			st.setData(username);
			SSOHelper.setSSOCookie(request, response, st, true);
		} else {
			logger.warn(String.format("wrong login: name=%s password=%s", username, password));
			map.put("code", "400");
			map.put("msg", "您输入的帐号或密码有误");
		}
		return map;
	}
	
	@RequestMapping(value = "/check_user")
	public @ResponseBody String checkUserAvailable(@RequestParam(value = "username") String username) {
		if (userService.checkUserByUsername(username) == null) {
			return String.valueOf(true);
		} else {
			return String.valueOf(false);
		}
	}

	@RequestMapping(value = "/register")
	public  String register(Model model) {

		return "/views/register";
	}

	@RequestMapping(value = "/gotoregister")
	public String gotoregister() {
		return "/views/register";
	}

	@RequestMapping(value = "/gotologin")
	public String gotologin() {
		return "/views/login";
	}
}
