package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.HttpClientErrorException;

import com.model.News;
import com.model.Way;
import com.service.NewsService;
import com.service.WayService;

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
	private WayService wayService;

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
	@RequestMapping(value = "/aboutus")
	public String aboutus() {
		return "about/aboutus";
	}
	@RequestMapping(value = "/cultrue")
	public String cultrue() {
		return "about/cultrue";
	}
	@RequestMapping(value = "/history")
	public String history() {
		return "about/history";
	}

	@RequestMapping(value = "/product")
	public String product() {
		return "product";
	}

	@RequestMapping(value = "/news")
	public String news() {
		List<News> newslist = newsService.findAllNews();
		request.setAttribute("newslist", newslist);
		return "news";
	}

	@RequestMapping(value = "/shownewstext/{id}")
	public String shownewstext(@PathVariable(value = "id") String newsidtemp) {
		try {
			Long newsid = Long.parseLong(newsidtemp);
			News news = newsService.selectNewsByid(newsid);
			request.setAttribute("news", news);
		} catch (NumberFormatException e) {
			logger.warn("shownewstext: bad parameter", e);
			throw new HttpClientErrorException(HttpStatus.NOT_FOUND);
		}
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
		Way ways=wayService.findWay();
		request.setAttribute("ways", ways);
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
