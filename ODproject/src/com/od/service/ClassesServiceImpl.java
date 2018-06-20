package com.od.service;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.od.dao.ClassesDaoImpl;
import com.od.entity.Classes;
import com.od.entity.Course;
import com.od.entity.ODMethod;

/**
*  
* Title: ClassesServiceImpl  
*
* Description:  
*
* Company: Old Driver
*
* @author lfy 
*
* @date 2018年6月19日  
*
*/  
@Service
@Transactional(readOnly=false)
public class ClassesServiceImpl {
	@Resource
	private ClassesDaoImpl classesDaoImpl;
	
	/**
	 * @param classes 
	 * @param course
	 * @param odMethod
	 */
	public void chooseCourse(Course course,ODMethod odMethod){
		//判断课程是否被选择
		Classes classes = this.classesDaoImpl.checkCourse(course.getId(),odMethod.getId());
		if(classes==null){
			classes = new Classes();
			classes.setCourse(course);
			classes.setGetWay("byChoose");  
			classes.setOdMethod(odMethod); 
			this.classesDaoImpl.chooseCourse(classes);
		}
	}
	
	/**
	 * @param courses
	 * @param odMethod
	 */
	public void chooseCourse(List<Course> courses,ODMethod odMethod){
		for(Course c:courses){
			//判断课程是否被选择
			Classes classes = this.classesDaoImpl.checkCourse(c.getId(),odMethod.getId());
			if(classes==null){
				classes = new Classes();
				classes.setCourse(c);
				classes.setGetWay("byChoose");  
				classes.setOdMethod(odMethod); 
				this.classesDaoImpl.chooseCourse(classes);
			}
		}
	}

	public Classes checkCourse(int courseid, int odMethodid) {
		return this.classesDaoImpl.checkCourse(courseid, odMethodid);
	}
}
