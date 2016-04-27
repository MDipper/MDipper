package com.controller;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.kisso.SSOHelper;
import com.baomidou.kisso.SSOToken;
import com.model.News;
import com.model.User;
import com.service.NewsService;
import com.service.UserService;

@Controller
@RequestMapping("/backend")
public class backendController {
	@Autowired
	private UserService userService;

	@Autowired
	private NewsService newsService;

	@Autowired
	protected HttpServletRequest request;

	@Autowired
	protected HttpServletResponse response;

	private static Logger logger = Logger.getLogger(backendController.class);

	@RequestMapping(value = "/newsmanage")
	public String newsmanage() {
		return "views/newsmanage";
	}

	@RequestMapping(value = "/savenews")
	public @ResponseBody Map<String, Object> savenews(
			@RequestParam(value = "newsdate") Date newsdate,
			@RequestParam(value = "newstitle") String newstitle,
			@RequestParam(value = "newsabstract") String newsabstract,
			@RequestParam(value = "newstext") String text) {
		Map<String, Object> map = new HashMap<String, Object>();
		logger.debug(String.format("text=%s", text));
		if (text == null || "".equals(text)) {
			map.put("code", "400");
			map.put("msg", "新闻内容不能为空");
			return map;
		} else {
			News news = new News();
			news.setNewsdate(newsdate);
			news.setNewstitle(newstitle);
			news.setNewsabstract(newsabstract);
			news.setNewstext(text);
			newsService.addNews(news);
			logger.debug(String.format("add newstext:%s", text));
			map.put("code", "200");
			map.put("msg", "新闻保存成功");
			return map;
		}

	}

	@RequestMapping(value = "/notice")
	public String notice() {
		return "views/notice";
	}

	@RequestMapping(value = "/usermanage")
	public String usermanage() {
		return "views/usermanage";
	}

	@RequestMapping("/ajaxAllUser")
	public @ResponseBody List<User> ajaxAllUser() {
		return userService.findAllUser();
	}

	@RequestMapping(value = "/index")
	public String index() {
		SSOToken st = SSOHelper.getToken(request);
		if (st != null) {
			request.setAttribute("userid", st.getUid());
			logger.debug(String.format("st.getUid()=%s", st.getUid()));
		}
		return "views/index";
	}

}
