package com.od.service.classes.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.od.entity.ODMethod;
import com.od.entity.User;
import com.od.service.classes.service.ClassesServiceImpl;

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
	
	/**
	 * @param session
	 * @param model
	 * @return
	 */	
	@RequestMapping(value="/choseCourse/")
	public String choseCourse(HttpSession session,Model model,int id){
		User user =(User) session.getAttribute("user");
		if(user==null){
			model.addAttribute("errorLogin","请登录后进行选课");
			return "login";
		}
		ODMethod odMethod=user.getOdMethod();
		return null;
	}
}
