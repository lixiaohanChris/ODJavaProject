package com.od.service.commend.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.od.entity.User;
import com.od.service.commend.service.CommendServiceImpl;
import com.od.service.information.service.InformationServiceImpl;
import com.od.service.user.service.UserServiceImpl;
import com.sun.javafx.logging.PulseLogger;

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
		this.commendServiceImpl.getCommend(u);
		
		return "personal";
	}
}