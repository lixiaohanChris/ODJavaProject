package com.od.service.course.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.od.entity.Course;
import com.od.entity.CourseContent;
import com.od.entity.CourseType;
import com.od.service.course.dao.CourseDaoImpl;

@Service
@Transactional(readOnly=false)
public class CourseServiceImpl {
	@Resource
	private CourseDaoImpl courseDaoImpl;
	
	//遍历所有的courseType
	public List<CourseType> getAllcourseType() {
		// TODO Auto-generated method stub
		return (List<CourseType>) this.courseDaoImpl.getAllCourseType();
	}
	
	//遍历所有的course
	public List<Course> getCourseById(String typeid) {
		
		return this.courseDaoImpl.getCourseById(typeid);
	}
	
	//遍历所有的courseContent
	public List<CourseContent> getCourseContentById(String courseid) {
		// TODO Auto-generated method stub
		return this.courseDaoImpl.getCourseContentById(courseid);
	}
	
	//分页查询课程类型信息数据统计
	public Long findCourseTypeCountByPage() {
		return this.courseDaoImpl.findUserCountByPage();
	}
	//分页查询课程类型信息
	public List<CourseType> findByCourseTypePage(int pageNum, int pageSize) {
		return this.courseDaoImpl.findByUserPage(pageNum,pageSize);
	}
	
	//后台管理插入courseType
	public void CourseTypeInsert(CourseType courseType) {
		this.courseDaoImpl.CourseTypeInsert(courseType);
	}
}
