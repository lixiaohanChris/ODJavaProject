package com.od.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.od.entity.Course;
import com.od.entity.CourseContent;
import com.od.entity.CourseType;

@Repository
public class CourseDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	//遍历所有的课程类型
	public List<CourseType> getAllCourseType() {
		// TODO Auto-generated method stub
		Query query = this.sessionFactory.getCurrentSession().createQuery("from CourseType");
		return query.list();
	}
	
	//遍历所有的课程
	public List<Course> getCourseById(int typeid) {
		Query query = this.sessionFactory.getCurrentSession().createQuery("from Course where coursetypeid="+typeid);
		return query.list();
	}

	//遍历所有的课程内容
	public List<CourseContent> getCourseContentById(String courseid) {
		Query query = this.sessionFactory.getCurrentSession().createQuery("from CourseContent where courseid="+courseid);
		return query.list();
	}
	
	
	//分页查询课程类型信息数据统计
	public Long findCourseTypeCountByPage() {
		Query query=this.sessionFactory.getCurrentSession().createQuery("select count(id) from CourseType");
		return (Long)query.uniqueResult();
	}
	
	//分页查询课程类型信息
	public List<CourseType> findByCourseTypePage(int pageNum, int pageSize) {
		Query query=this.sessionFactory.getCurrentSession().createQuery("from CourseType");
		query.setFirstResult((pageNum-1)*pageSize);
		query.setMaxResults(pageSize);
		return query.list();
	}
	
	//后台管理，插入courseType
	public void CourseTypeInsert(CourseType courseType) {
		this.sessionFactory.getCurrentSession().save(courseType);
	}
	//根据id获取coursetype
	public CourseType getCourseTypeById(int id) {
		return this.sessionFactory.getCurrentSession().get(CourseType.class, id);
	}
	
	//后台管理，删除courseTypeById
	public void deleteCourseTypeById(CourseType courseType) {
		this.sessionFactory.getCurrentSession().delete(courseType);
	}
	
	
	//分页查询课程信息by courseTypeId
	public List<Course> findCourseByIdPage(int coursetypeid, int pageNum, int pageSize) {
		Query query=this.sessionFactory.getCurrentSession().createQuery("from Course where coursetypeId="+coursetypeid);
		query.setFirstResult((pageNum-1)*pageSize);
		query.setMaxResults(pageSize);
		return query.list();
	}
	//分页查询课程信息数据统计 by courseTypeId
	public Long findCourseCountByPage(int coursetypeid) {
		Query query=this.sessionFactory.getCurrentSession().createQuery("select count(id) from Course where coursetypeId="+coursetypeid);
		return (Long)query.uniqueResult();
	}
	
	
	//分页查询课程内容信息 by Courseid
	public List<CourseContent> findCourseContentByIdPage(int courseId, int pageNum, int pageSize) {
		Query query=this.sessionFactory.getCurrentSession().createQuery("from CourseContent where courseId="+courseId);
		query.setFirstResult((pageNum-1)*pageSize);
		query.setMaxResults(pageSize);
		return query.list();
	}
	
	//分页查询课程内容数据统计 by Courseid
	public Long findCourseContentCountByPage(int courseId) {
		Query query=this.sessionFactory.getCurrentSession().createQuery("select count(id) from CourseContent where courseId="+courseId);
		return (Long)query.uniqueResult();
	}

	public Course getCourseById1(int courseid) {
		// TODO Auto-generated method stub
		return this.sessionFactory.getCurrentSession().get(Course.class, courseid);
	}

	public void updateCourseType(CourseType courseType) {
		this.sessionFactory.getCurrentSession().update(courseType);
	}

	


}
