package com.controller;

import java.util.List;







import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.model.User;
import com.service.UserService;

/**
 * @author xiezhipeng
 * @Date 2016-4-20
 */
@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	private static Logger logger = Logger.getLogger(UserController.class);

	@RequestMapping(value = "/getall" ,method=RequestMethod.GET)
	public  @ResponseBody <User>String getall() {
 		List<com.model.User> userlist = userService.findAllUser();
		JSONObject jo = new JSONObject();
		logger.debug(jo.toJSONString(userlist));
		return jo.toJSONString(userlist);
	}
	
	
}
