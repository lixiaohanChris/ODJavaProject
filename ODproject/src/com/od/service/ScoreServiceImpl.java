package com.od.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.od.dao.ScoreDaoImpl;
import com.od.entity.Score;
import com.od.entity.User;

@Service
@Transactional(readOnly = false)
public class ScoreServiceImpl {

	@Resource
	private ScoreDaoImpl scoreDaoImpl;

	// 评分记录
	public void insertScore(User user,int courseid,int score) {
		this.scoreDaoImpl.insertScore(user, courseid, score);
	}
	//评分
	public Score getScores(int id, int courseid) {
		return this.scoreDaoImpl.getScores(id,courseid);
	}
	public double getCourseAverageScoreById(int courseid){
		return this.scoreDaoImpl.getCourseAverageScoreById(courseid);
	}
	public void insertAverageScoreByCourseid(int courseid,double averagescore){
		this.scoreDaoImpl.insertAverageScoreByCourseid(courseid,averagescore);
	}

}
