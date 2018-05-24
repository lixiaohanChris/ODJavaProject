package com.od.service.course.dao;

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
	public List<Course> getCourseById(String typeid) {
		Query query = this.sessionFactory.getCurrentSession().createQuery("from Course where coursetypeid="+typeid);
		return query.list();
	}

	//遍历所有的课程内容
	public List<CourseContent> getCourseContentById(String courseid) {
		Query query = this.sessionFactory.getCurrentSession().createQuery("from CourseContent where courseid="+courseid);
		return query.list();
	}
	
	//分页查询课程类型信息数据统计
	public Long findUserCountByPage() {
		Query query=this.sessionFactory.getCurrentSession().createQuery("select count(id) from CourseType");
		return (Long)query.uniqueResult();
	}
	
	//分页查询课程类型信息
	public List<CourseType> findByUserPage(int pageNum, int pageSize) {
		Query query=this.sessionFactory.getCurrentSession().createQuery("from CourseType");
		query.setFirstResult((pageNum-1)*pageSize);
		query.setMaxResults(pageSize);
		return query.list();
	}
	
	//后台管理，插入courseType
	public void CourseTypeInsert(CourseType courseType) {
		this.sessionFactory.getCurrentSession().save(courseType);
	}
}
