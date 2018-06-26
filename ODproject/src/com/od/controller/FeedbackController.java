package com.od.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.od.entity.User;
import com.od.service.FeedbackServiceImpl;
import com.sun.org.apache.xpath.internal.operations.Mod;
@Controller
@RequestMapping("/feedback")
public class FeedbackController {
	@Resource
	private FeedbackServiceImpl feedbackServiceImpl;
	@RequestMapping(value="/insertFeedback",method=RequestMethod.POST)
	@ResponseBody
	private Boolean insertFeedback(Model model,HttpSession session,String title,String type,String content){
		User user = (User) session.getAttribute("user");
		this.feedbackServiceImpl.insertFeedback(user,title,type,content);
		return false;
	}
	@RequestMapping(value="/insertFeedback1",method=RequestMethod.POST)
	private String insertFeedback1(Model model,HttpSession session,String title,String type,String content){
		User user = (User) session.getAttribute("user");
		if(user==null){
			return"login";
		}
		this.feedbackServiceImpl.insertFeedback(user,title,type,content);
		return "index";
	}
	
}
