package com.od.dao;

import java.util.List;
import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.od.entity.Classes;
import com.od.entity.Course;
import com.od.entity.ODMethod;
import com.od.entity.Score;
import com.od.entity.User;
import com.sun.mail.util.QEncoderStream;

@Repository
public class CommendDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	//5分评价
	public List<Score> findScoreByUserId(User u) {
		Query query = this.sessionFactory.getCurrentSession().createQuery("from Score where userid ="+u.getId()+" and score = 5");
		return query.list();
	}
	//除自己外全部用户
	public List<User> findUserByUserId(User u) {
		Query query = this.sessionFactory.getCurrentSession().createQuery("from User where id !="+u.getId());
		return query.list();
	}
	//用户同时评价5分的课程数量
	public int findCountByCourseIdAndUserId(int courseid, int userid) {
		Query query = this.sessionFactory.getCurrentSession().createQuery("select count(*) from Score where courseid="+courseid+" and userid="+userid+" and score = 5");
		Long l = (Long)query.uniqueResult();
		return l.intValue();
	}
	public Score findScoreByCourseIdAndUserId(Course course, User u) {
		Query query = this.sessionFactory.getCurrentSession().createQuery("from Score where courseid="+course.getId()+" and userid="+u.getId());
		return (Score)query.uniqueResult();
	}
	public Classes findCourseByCourseIdAndODMethodId(ODMethod odMethod, Course course) {
		Query query = this.sessionFactory.getCurrentSession().createQuery("from Classes where odmethodId="+odMethod.getId()+" and courseId="+course.getId());
		return (Classes)query.uniqueResult();
	}
	public List<Course> findCourseByMaxScore(){
		Query query = this.sessionFactory.getCurrentSession().createQuery("select max(averageScore) from Course");
		Double maxAverageScore = (Double)query.uniqueResult();
		Query query2 = this.sessionFactory.getCurrentSession().createQuery("from Course where averageScore="+maxAverageScore);
		return query2.list();
	}

}
