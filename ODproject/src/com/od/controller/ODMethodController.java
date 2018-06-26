package com.od.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.od.entity.ODMethod;
import com.od.entity.User;
import com.od.service.ODMethodServiceImpl;
import com.od.service.UserServiceImpl;


@Controller
@RequestMapping("/odMethod")
public class ODMethodController {
	
	@Resource
	private ODMethodServiceImpl odMethodServiceImpl;
	@Resource
	private UserServiceImpl userServiceImpl;
	
	@RequestMapping(value="/Recommend/course")
	public String recommendCourse(HttpSession session){
		User u = (User)session.getAttribute("user");
		String hobby=u.getInformation().getHobby();//兴趣爱好：健身  瑜伽  跑步  骑行   行走  其他  暂无
	    String sports_base=u.getInformation().getSports_base();  //运动基础
		String target=u.getInformation().getTarget();  //运动目标：减脂 ， 局部塑形，增肌，保持健康
		return null;
	}
	
}
