package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/backend")
public class backPjaxController {
	@RequestMapping(value="/info")
	public String info(){
		return  "/backend/manageinfo";
	}

}
