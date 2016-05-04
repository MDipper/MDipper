package com.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.kisso.SSOHelper;
import com.baomidou.kisso.SSOToken;
import com.model.News;
import com.model.Notice;
import com.model.User;
import com.service.NewsService;
import com.service.NoticeService;
import com.service.UserService;

@Controller
@RequestMapping("/backend")
public class backendController {
	@Autowired
	private UserService userService;

	@Autowired
	private NewsService newsService;

	@Autowired
	private NoticeService noticeService;

	@Autowired
	protected HttpServletRequest request;

	@Autowired
	protected HttpServletResponse response;

	private static Logger logger = Logger.getLogger(backendController.class);

	@RequestMapping(value = "/noticeEdit")
	public String noticeEdit() {
		return "views/noticeEdit";
	}

	@RequestMapping(value = "/savenotice", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> savenotice(
			@RequestParam(value = "noticetitle") String noticetitle,
			@RequestParam(value = "noticecontent") String noticecontent) {
		Map<String, Object> map = new HashMap<String, Object>();
		Notice notice = new Notice();
		notice.setNoticeid(1);
		notice.setNoticetitle(noticetitle);
		notice.setNoticecontent(noticecontent);
		logger.debug(String.format("noticetitle=%s", noticetitle));
		if (noticetitle == null || "".equals(noticetitle)) {
			map.put("msg", "公告标题不能为空！");
		} else if (noticecontent == null || "".equals(noticecontent)) {
			map.put("msg", "公告内容不能为空！");
		} else {
			noticeService.updateNotice(notice);
			map.put("msg", "公告更新成功！");
		}
		return map;

	}

	@RequestMapping(value = "/newsmanage")
	public String newsmanage() {
		return "views/news/newsmanage";
	}

	@RequestMapping(value = "/newslist")
	public String newslist() {
		return "views/news/newslist";
	}

	@RequestMapping(value = "updateuser", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> updateuser(@RequestParam(value = "userid") long userid,
			@RequestParam(value = "username") String username, @RequestParam(value = "password") String password) {
		Map<String, Object> map = new HashMap<String, Object>();
		User  user=new User();
		user.setId(userid);
		user.setUsername(username);
		user.setPassword(password);
		userService.updateUser(user);
		map.put("code", "200");
		map.put("msg", "更新用户成功");
		return map;
	}

	@RequestMapping(value = "deleteuser", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> deleteuser(@RequestParam(value = "userid") long userid) {
		Map<String, Object> map = new HashMap<String, Object>();
		userService.deleteUser(userid);
		logger.info("delete user: " + userid);
		map.put("code", "200");
		map.put("msg", "删除用户成功");
		return map;
	}

	
	@RequestMapping(value = "deleteuserlist", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> deleteuser(@RequestParam(value = "userlist") String userlist) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<Long> list = new ArrayList<>();
		try {
			for (String s : userlist.split(",")) {
				list.add(Long.parseLong(s));
			}
			userService.deleteUser(list);
			logger.info("delete user: " + userlist);
			map.put("code", "200");
			map.put("msg", "批量删除用户成功");
			return map;
		} catch (NumberFormatException e) {
			map.put("code", "400");
			map.put("msg", "删除失败");
			return map;
		}		
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
		}
		return map;
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
