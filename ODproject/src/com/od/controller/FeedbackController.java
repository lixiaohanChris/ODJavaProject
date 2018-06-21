package com.od.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.od.entity.User;
import com.od.service.FeedbackServiceImpl;
import com.sun.org.apache.xpath.internal.operations.Mod;
@Controller
@RequestMapping("/feedback")
public class FeedbackController {
	@Resource
	private FeedbackServiceImpl feedbackServiceImpl;
	@RequestMapping("/insertFeedback")
	private String insertFeedback(HttpSession session,String title,String type,String content){
		User user = (User) session.getAttribute("user");
		this.feedbackServiceImpl.insertFeedback(user,title,type,content);
		return "personal";
	}
}
