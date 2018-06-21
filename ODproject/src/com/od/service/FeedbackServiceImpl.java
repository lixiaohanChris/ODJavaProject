package com.od.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.od.dao.FeedbackDaoImpl;
import com.od.entity.Feedback;
import com.od.entity.User;
@Service
@Transactional(readOnly=false)
public class FeedbackServiceImpl {
	@Resource
	private FeedbackDaoImpl feedbackDaoImpl;
	public void insertFeedback(User user, String title, String type, String content) {
		Feedback feedback = new Feedback();
		feedback.setUser(user);
		feedback.setTitle(title);
		feedback.setType(type);
		feedback.setContent(content);
		this.feedbackDaoImpl.insertFeedback(feedback);
		
	}

}
