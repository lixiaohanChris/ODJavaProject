package com.od.controller;

import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.od.entity.Course;
import com.od.entity.User;
import com.od.service.CommendServiceImpl;
import com.od.service.UserServiceImpl;

@Controller
@RequestMapping("/commend")
public class CommendController {
	@Resource
	private CommendServiceImpl commendServiceImpl;
	@Resource
	private UserServiceImpl userServiceImpl;
	@RequestMapping("/getCommend")
	public String getCommend(Model model,HttpSession session){
		User user = (User) session.getAttribute("user");
		User u = this.userServiceImpl.registCheck(user.getEmail());
		Set<Course> courses =this.commendServiceImpl.getCommend(u);
		model.addAttribute("course",courses);
		return "personalModel";
	}
	
}