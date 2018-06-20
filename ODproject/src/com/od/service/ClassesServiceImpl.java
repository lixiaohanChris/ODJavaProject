package com.od.service;

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
	 * 
	 */
	public void chooseCourse(Course course,ODMethod odMethod){
		Classes classes = new Classes();
		classes.setCourse(course);
		classes.setGetWay("byChoose");
		classes.setOdMethod(odMethod); 
		this.classesDaoImpl.chooseCourse(classes);
	}
}
