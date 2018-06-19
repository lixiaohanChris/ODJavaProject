package com.od.service;

import java.util.List;
import java.util.concurrent.CountDownLatch;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.od.dao.CommendDaoImpl;
import com.od.entity.Course;
import com.od.entity.Score;
import com.od.entity.User;

@Service
@Transactional(readOnly = false)
public class CommendServiceImpl {
	@Resource
	private CommendDaoImpl commendDaoImpl;
	
	public Course getCommend(User u) {
		List<Score> scores = commendDaoImpl.findScoreByUserId(u);
		List<User> users = commendDaoImpl.findUserByUserId();
		for(User user:users){
			Double similarity;
			int count;
			//for (Score)
		}
		
		return null;
	}
}
