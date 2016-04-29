package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	protected HttpServletRequest request;

	private static Logger logger = Logger.getLogger(pjaxController.class);

	@RequestMapping(value = "/index")
	public String index() {
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
	public String news()  {
		List<News> newslist = newsService.findAllNews();
		request.setAttribute("newslist", newslist);
		return "news";
	}
	@RequestMapping(value = "/shownewstext")
	public String shownewstext (@RequestParam(value="newsid") String newsidtemp){
		Long newsid=Long.parseLong(newsidtemp);
		News news = newsService.selectNewsByid(newsid);
		request.setAttribute("news", news);
		return "shownewstext";
	}
	

	@RequestMapping(value = "/service")
	public String service() {
		return "service";
	}

	@RequestMapping(value = "/join")
	public String join() {
		return "join";
	}

	@RequestMapping(value = "/contact")
	public String contact() {
		return "contact";
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

	@RequestMapping(value = "/map-intern")
	public String map() {
		return "/map";
	}
}
