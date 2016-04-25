package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.News;
import com.service.NewsService;

/**
 * @author xiezhipeng
 * @Date 2016-4-20
 */

@Controller
@RequestMapping("/main")
public class pjaxController {
	@Autowired
	private NewsService newsService;
	
	@Autowired
	HttpServletRequest request;
	
	@RequestMapping(value ="/index" )
	public String index(){
		return "main";
	}

	@RequestMapping(value = "/about")
	public String about() {
		return "about";
	}

	@RequestMapping(value = "/product")
	public String product() {
		return "product";
	}

	@RequestMapping(value = "/news")
	public String news() {
		News news=newsService.selectNewsByid(2);
		request.setAttribute("newstext", news.getNewstext());
		return "news";
	}

	@RequestMapping(value = "/service")
	public String service() {
		return "service";
	}

	@RequestMapping(value = "/join")
	public String join() {
		return "join";
	}

	@RequestMapping(value = "/contract")
	public String contract() {
		return "contract";
	}

	@RequestMapping(value = "/plan")
	public String plan() {
		return "/service/plan";
	}

	@RequestMapping(value = "/teamwork")
	public String teamwork() {
		return "/service/teamwork";
	}

	@RequestMapping(value = "/client")
	public String client() {
		return "/service/client";
	}
}
