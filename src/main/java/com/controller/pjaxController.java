package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/MDipper")
public class pjaxController {

	@RequestMapping(value ="/about" ,headers="X-PJAX=true")
	public String about(){
		return "about";
	}
	@RequestMapping(value ="/product",headers="X-PJAX=true")
	public String product(){
		return "product";
	}
	@RequestMapping(value ="/news",headers="X-PJAX=true")
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
}
