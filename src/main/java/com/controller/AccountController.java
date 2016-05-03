package com.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.baomidou.kisso.*;
import com.baomidou.kisso.annotation.*;
import com.baomidou.kisso.common.encrypt.SaltEncoder;
import com.baomidou.kisso.web.waf.request.WafRequestWrapper;
import com.model.User;
import com.service.UserService;

/**
 * @author xiezhipeng
 * @Date 2016-4-20
 */
@RequestMapping("/account")
@Controller
public class AccountController {
	@Autowired
	private UserService userService;

	@Autowired
	protected HttpServletRequest request;

	@Autowired
	protected HttpServletResponse response;

	private static Logger logger = Logger.getLogger(AccountController.class);

	@Login(action = Action.Skip)
	@RequestMapping(value = "/login")
	public String login() {

		return "views/login";
	}

	@Login(action = Action.Skip)
	@RequestMapping(value = "/register")
	public String register() {
		return "views/register";
	}

	@Login(action = Action.Skip)
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> addUser(@RequestParam(value = "username") String username,
			@RequestParam(value = "password") String password) {
		Map<String, Object> map = new HashMap<String, Object>();
		if (!userService.checkUserByUsername(username)) {
			User user = new User();
			user.setUsername(username);
			user.setPassword(SaltEncoder.md5SaltEncode(username, password));
			long id = userService.addUser(user);
			logger.debug(String.format("add user: id=%d name=%s", id, username));
			map.put("code", "200");
			map.put("msg", "注册成功！");

			long userid = userService.validUserAndPassword(user);
			/*
			 * authSSOCookie 设置 cookie 同时改变 jsessionId
			 */
			SSOToken st = new SSOToken(request);
			st.setId(userid);
			st.setUid(username);
			st.setType(1);
			logger.debug(String.format("st.getId=%s", st.getId()));

			// 记住密码，设置 cookie 时长 1 天 = 86400 秒 【动态设置 maxAge 实现记住密码功能】
			/*
			 * String rememberMe = req.getParameter("rememberMe"); if
			 * ("on".equals(rememberMe)) {
			 * request.setAttribute(SSOConfig.SSO_COOKIE_MAXAGE, 86400); }
			 */
			request.setAttribute(SSOConfig.SSO_COOKIE_MAXAGE, -1);// 浏览器关闭自动删除cookie
			SSOHelper.setSSOCookie(request, response, st, true);

		} else {
			logger.warn(String.format("conflict user: name=%s", username));
			map.put("code", "400");
			map.put("msg", "用户已存在！");
		}
		return map;
	}

	@Login(action = Action.Skip)
	@RequestMapping(value = "/loginpost", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> loginpost(@RequestParam(value = "username") String username,
			@RequestParam(value = "password") String password) {
		Map<String, Object> map = new HashMap<String, Object>();
		/**
		 * 生产环境需要过滤sql注入
		 */
		WafRequestWrapper req = new WafRequestWrapper(request);
		String username_ = req.getParameter("username");
		String password_ = req.getParameter("password");
		User user = new User();
		user.setUsername(username_);
		user.setPassword(password_);
		long userid = userService.validUserAndPassword(user);
		if (userid != -1) {
			logger.debug(String.format("login success: name=%s password=%s", username_, password_));
			map.put("code", "200");
			map.put("msg", "登录成功！");

			/*
			 * authSSOCookie 设置 cookie 同时改变 jsessionId
			 */
			SSOToken st = new SSOToken(request);
			st.setId(userid);
			st.setUid(username_);
			st.setType(1);
			logger.debug(String.format("st.getId=%s", st.getId()));

			// 记住密码，设置 cookie 时长 1 天 = 86400 秒 【动态设置 maxAge 实现记住密码功能】
			/*
			 * String rememberMe = req.getParameter("rememberMe"); if
			 * ("on".equals(rememberMe)) {
			 * request.setAttribute(SSOConfig.SSO_COOKIE_MAXAGE, 86400); }
			 */
			request.setAttribute(SSOConfig.SSO_COOKIE_MAXAGE, -1);// 浏览器关闭自动删除cookie
			SSOHelper.setSSOCookie(request, response, st, true);
		} else {
			logger.warn(String.format("wrong login: name=%s password=%s", username_, password_));
			map.put("code", "400");
			map.put("msg", "您输入的帐号或密码有误");
		}
		return map;
	}

	@Login(action = Action.Skip)
	@RequestMapping(value = "/check_user")
	public @ResponseBody String checkUserAvailable(@RequestParam(value = "username") String username) {
		if (!userService.checkUserByUsername(username)) {
			return String.valueOf(true);
		} else {
			return String.valueOf(false);
		}
	}

}