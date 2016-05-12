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
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.HttpClientErrorException;

import com.baomidou.kisso.SSOHelper;
import com.baomidou.kisso.SSOToken;
import com.model.CompanyInfo;
import com.model.News;
import com.model.Notice;
import com.model.User;
import com.model.Way;
import com.service.CompanyInfoService;
import com.service.NewsService;
import com.service.NoticeService;
import com.service.UserService;
import com.service.WayService;

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
	private WayService wayService;
	
	@Autowired
	private CompanyInfoService companyInfoService;
	
	@Autowired
	protected HttpServletRequest request;

	@Autowired
	protected HttpServletResponse response;

	private static Logger logger = Logger.getLogger(backendController.class);
	
	@RequestMapping(value = "/savehistory", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> savehistory(
			@RequestParam(value = "cpnhistory") String cpnhistory,
			@RequestParam(value = "cpnhistorymd") String cpnhistorymd) {
		Map<String, Object> map = new HashMap<String, Object>();
		CompanyInfo companyInfo=new CompanyInfo();
		companyInfo.setCpnid((long) 1);
		companyInfo.setCpnhistory(cpnhistory);
		companyInfo.setCpnhistorymd(cpnhistorymd);
		companyInfoService.updateCompanyInfo(companyInfo);
		logger.debug(String.format("notice=%s", cpnhistorymd));
		map.put("code", "200");
		map.put("msg", "发展历程保存成功！");
		return map;

	}
	@RequestMapping(value = "/historyedit")
	public String historyedit() {
	CompanyInfo companyInfo=companyInfoService.findCompanyInfo();
	String cpnhistorymd=companyInfo.getCpnhistorymd();
	request.setAttribute("cpnhistorymd", cpnhistorymd);
	return "views/historyedit";
	}

	@RequestMapping(value = "/wayedit")
	public String wayedit() {
		Way ways = wayService.findWay();
		request.setAttribute("ways", ways);
		return "views/wayedit";
	}

	@RequestMapping(value = "/updateway")
	public @ResponseBody Map<String, Object> updateway(
			@RequestParam(value = "address") String address,
			@RequestParam(value = "zipcode") String zipcode,
			@RequestParam(value = "linkman") String linkman,
			@RequestParam(value = "phone") String phone,
			@RequestParam(value = "email") String email) {
		Map<String, Object> map = new HashMap<String, Object>();
		Way way = new Way();
		way.setWayid((long) 1);
		way.setAddress(address);
		way.setZipcode(zipcode);
		way.setLinkman(linkman);
		way.setPhone(phone);
		way.setEmail(email);
		wayService.updateWay(way);
		logger.debug(String.format("way=%s", way));
		map.put("code", "200");
		map.put("msg", "联系方式更新成功！");
		return map;
	}

	@RequestMapping(value = "/noticeEdit")
	public String noticeEdit() {
		Notice notice = noticeService.findNotice();
		request.setAttribute("notice", notice);
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
		noticeService.updateNotice(notice);
		logger.debug(String.format("notice=%s", notice));
		map.put("code", "200");
		map.put("msg", "公告更新成功！");
		return map;

	}

	@RequestMapping(value = "/newsmanage")
	public String newsmanage() {
		return "views/news/newsmanage";
	}

	@RequestMapping(value = "/newsedit/{id}")
	public String newsedit(@PathVariable(value = "id") String newsidtemp) {
		try {
			Long newsid = Long.parseLong(newsidtemp);
			News news = newsService.selectNewsByid(newsid);
			request.setAttribute("news", news);
		} catch (NumberFormatException e) {
			logger.warn("shownewstext: bad parameter", e);
			throw new HttpClientErrorException(HttpStatus.NOT_FOUND);
		}
		return "views/news/newsedit";
	}

	@RequestMapping(value = "/newslist")
	public String newslist() {
		List<News> newslist = newsService.findAllNews();
		request.setAttribute("newslist", newslist);
		return "views/news/newslist";
	}

	@RequestMapping(value = "updateuser", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> updateuser(
			@RequestParam(value = "userid") long userid,
			@RequestParam(value = "username") String username,
			@RequestParam(value = "password") String password) {
		Map<String, Object> map = new HashMap<String, Object>();
		User user = new User();
		user.setId(userid);
		user.setUsername(username);
		user.setPassword(password);
		userService.updateUser(user);
		map.put("code", "200");
		map.put("msg", "更新用户成功");
		return map;
	}

	@RequestMapping(value = "deleteuser", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> deleteuser(
			@RequestParam(value = "userid") long userid) {
		Map<String, Object> map = new HashMap<String, Object>();
		userService.deleteUser(userid);
		logger.info("delete user: " + userid);
		map.put("code", "200");
		map.put("msg", "删除用户成功");
		return map;
	}

	@RequestMapping(value = "deleteuserlist", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> deleteuser(
			@RequestParam(value = "userlist") String userlist) {
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

	@RequestMapping(value = "/savenews", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> savenews(
			@RequestParam(value = "newsdate") Date newsdate,
			@RequestParam(value = "newstitle") String newstitle,
			@RequestParam(value = "newsabstract") String newsabstract,
			@RequestParam(value = "newstext") String newstext,
			@RequestParam(value = "newstextmd") String newstextmd) {
		Map<String, Object> map = new HashMap<String, Object>();
		logger.debug(String.format("newstext=%s", newstext));
		if (newstext == null || "".equals(newstext)) {
			map.put("code", "400");
			map.put("msg", "新闻内容不能为空");
		} else {
			News news = new News();
			news.setNewsdate(newsdate);
			news.setNewstitle(newstitle);
			news.setNewsabstract(newsabstract);
			news.setNewstext(newstext);
			news.setNewstextmd(newstextmd);
			newsService.addNews(news);
			logger.debug(String.format("add newstext:%s", newstext));
			map.put("code", "200");
			map.put("msg", "新闻保存成功");
		}
		return map;
	}

	@RequestMapping(value = "/updatenews", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> updatenews(
			@RequestParam(value = "newsid") Long newsid,
			@RequestParam(value = "newsdate") Date newsdate,
			@RequestParam(value = "newstitle") String newstitle,
			@RequestParam(value = "newsabstract") String newsabstract,
			@RequestParam(value = "newstext") String newstext,
			@RequestParam(value = "newstextmd") String newstextmd) {
		Map<String, Object> map = new HashMap<String, Object>();
		logger.debug(String.format("newstext=%s", newstext));
		if (newstext == null || "".equals(newstext)) {
			map.put("code", "400");
			map.put("msg", "新闻内容不能为空");
		} else {
			News news = new News();
			news.setNewsid(newsid);
			news.setNewsdate(newsdate);
			news.setNewstitle(newstitle);
			news.setNewsabstract(newsabstract);
			news.setNewstext(newstext);
			news.setNewstextmd(newstextmd);
			newsService.updateNews(news);
			logger.debug(String.format("add newstext:%s", newstext));
			map.put("code", "200");
			map.put("msg", "新闻更新成功");
		}
		return map;
	}

	@RequestMapping(value = "/notice")
	public String notice() {
		Notice notice= noticeService.findNotice();
		request.setAttribute("notice", notice);
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
