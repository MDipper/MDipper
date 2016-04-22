package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/backend")
public class backendController {
	@RequestMapping(value = "/notice")
	public String notice() {
		return "views/notice";
	}
	@RequestMapping(value = "/usermanage")
	public String usermanage() {
		return "views/usermanage";
	}
}
