package com.od.service.classes.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.od.entity.ODMethod;
import com.od.entity.User;
import com.od.service.classes.service.ClassesServiceImpl;

@Controller
@RequestMapping(value="/classes")
public class ClassesController {
	@Resource
	private ClassesServiceImpl classesServiceImpl;
	
	@RequestMapping(value="/choseCourse")
	public String choseCourse(HttpSession session){
		User user =(User) session.getAttribute("user");
		ODMethod method = user.getOdMethod();
		return null;
	}
}
