package com.od.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.od.entity.Feedback;
@Repository
public class FeedbackDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	public void insertFeedback(Feedback feedback) {
		this.sessionFactory.getCurrentSession().save(feedback);
	}

}
