package com.od.service.course.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.od.entity.Course;
import com.od.entity.CourseContent;
import com.od.entity.CourseType;
import com.od.service.course.dao.CourseDaoImpl;

@Service
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
}
