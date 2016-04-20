package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class pjaxController {
	@RequestMapping(value ="/index" )
	public String index(){
		return "index";
	}
	@RequestMapping(value ="/about" )
	public String about(){
		return "about";
	}
	@RequestMapping(value ="/product")
	public String product(){
		return "product";
	}
	@RequestMapping(value ="/news")
	public String news(){
		return "news";
	}
	
	@RequestMapping(value ="/service")
	public String service(){
		return "service";
	}
	@RequestMapping(value ="/join")
	public String join(){
		return "join";
	}
	@RequestMapping(value ="/contract")
	public String contract(){
		return "contract";
	}
	@RequestMapping(value ="/plan")
	public String plan(){
		return "/service/plan";
	}	
	@RequestMapping(value ="/teamwork")
	public String teamwork(){
		return "/service/teamwork";
	}
	@RequestMapping(value ="/client")
	public String client(){
		return "/service/client";
	}
}
