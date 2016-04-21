package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baomidou.kisso.SSOHelper;
import com.baomidou.kisso.SSOToken;
import com.model.User;
import com.service.UserService;

@Controller
@RequestMapping("/account")
public class AccountController {
	@Autowired
	private UserService userService;
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;

	@RequestMapping(value = "/login")
	public String login() {
		String username  = request.getParameter("username");
		String password  = request.getParameter("password");
		User user=new User(username,password);
		User userd = userService.checkUsernamePassword(user);
		if (userd != null) {
			/*
			 * 登录成功，进入后台
			 */

			SSOToken st = new SSOToken(request);
			st.setId(userd.getId());
			st.setData(username);
			SSOHelper.setSSOCookie(request, response, st, true);
			return ("/views/index.html");
		}
		return "/views/login";
	}

	@RequestMapping(value = "/register")
	public String register(Model model) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User user=new User(username,password);
		User existUser = userService.checkUserByUsername(user.getUsername());
		if (existUser == null) {
			int id = userService.addUser(user);
			if (id>0) {
				/*
				 * 注册成功，自动登录进入后台
				 */
				SSOToken st = new SSOToken(request);
				st.setId(user.getId());
				st.setData(user.getUsername());
				SSOHelper.setSSOCookie(request, response, st, true);
				 return ("/views/index.html");
			}
		} else {
			model.addAttribute("tipMsg", "注册用户名【" + user.getUsername() + "】已存在！");
		}
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
