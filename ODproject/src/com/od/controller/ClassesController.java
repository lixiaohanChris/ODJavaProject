package com.od.controller;

import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.od.entity.Classes;
import com.od.entity.Course;
import com.od.entity.ODMethod;
import com.od.entity.User;
import com.od.service.ClassesServiceImpl;
import com.od.service.CourseServiceImpl;

/**
*  
* Title: ClassesController  
*
* Description:  
*
* Company: Old Driver
*
* @author lfy 
*
* @date 2018年6月19日  
*
*/  
@Controller
@RequestMapping(value="/classes") 
public class ClassesController {
	@Resource
	private ClassesServiceImpl classesServiceImpl;
	@Resource
	private CourseServiceImpl courseServiceImpl;
	/**
	 * @param session
	 * @param model
	 * @return
	 */	
	@RequestMapping(value="/chooseCourse")
	public String choseCourse(HttpSession session,Model model,@ModelAttribute("course")Course course){
		User user =(User) session.getAttribute("user");
		if(user==null){
			model.addAttribute("errorLogin","请登录后进行选课");
			return "login";
		}
	    ODMethod odMethod=user.getOdMethod();
		this.classesServiceImpl.chooseCourse(course,odMethod);
		return "index";
	}
}
