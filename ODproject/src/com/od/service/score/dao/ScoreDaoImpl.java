package com.od.service.score.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.od.entity.Course;
import com.od.entity.Score;
import com.od.entity.User;
@Repository
public class ScoreDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	public void insertScore(User user,int courseid,float score){
		
		Course course = this.sessionFactory.getCurrentSession().get(Course.class, courseid);
		Score s = new Score();
		s.setCourse(course);
		s.setUser(user);
		s.setScore(score);
		this.sessionFactory.getCurrentSession().save(s);
	}
	public Score getScores(int id, int courseid) {
		return (Score) this.sessionFactory.getCurrentSession().createQuery("from Score where userid="+id+" and courseid="+courseid).uniqueResult();
	}
	//查询课程评分by Courseid
	public double getCourseAverageScoreById(int courseid){
		Query query=this.sessionFactory.getCurrentSession().createQuery("select avg(score) from Score where courseid="+courseid);
		return (double) query.uniqueResult();
	}
	public void insertAverageScoreByCourseid(int courseid,double averagescore) {
		Course course = this.sessionFactory.getCurrentSession().get(Course.class, courseid);
		course.setAverageScore(averagescore);
		this.sessionFactory.getCurrentSession().save(course);
	}
	
}
