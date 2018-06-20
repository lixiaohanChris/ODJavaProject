package com.od.service;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.od.dao.CourseDaoImpl;
import com.od.entity.Course;
import com.od.entity.CourseContent;
import com.od.entity.CourseType;

/**
*  
* Title: CourseServiceImpl  
*
* Description:  
*
* Company: Old Driver
*
* @author lfy 
*
* @date 2018年6月7日  
*
*/  
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
		return this.courseDaoImpl.findCourseTypeCountByPage();
	}
	//分页查询课程类型信息
	public List<CourseType> findByCourseTypePage(int pageNum, int pageSize) {
		return this.courseDaoImpl.findByCourseTypePage(pageNum,pageSize);
	}
	
	//后台管理插,入courseType
	public void CourseTypeInsert(CourseType courseType) {
		this.courseDaoImpl.CourseTypeInsert(courseType);
	}
	
	//根据id获取courseType
	public CourseType getCourseTypeById(int id) {
		return this.courseDaoImpl.getCourseById(id);
	}
	
	//后台管理,删除courseTypeById
	public void deleteCourseTypeById(CourseType courseType,HttpServletRequest request) {
		//获取文件路径和名称
		String imgPath = courseType.getImgPath();
		String path = request.getServletContext().getRealPath("/images/coursetype/");
		String name=imgPath.substring(imgPath.lastIndexOf("/")+1);
		String pathname=path+"\\"+name;
		//删除静态资源
		File file = new File(pathname);
		if(file.exists()&&file.isFile()){
			file.delete();
		} 
		//删除数据库中的数据
		this.courseDaoImpl.deleteCourseTypeById(courseType);
	}
	
	//分页查询课程信息 by CourseTypeid
	public List<Course> findCourseByIdPage(int coursetypeid,int pageNum, int pageSize) {
		return this.courseDaoImpl.findCourseByIdPage(coursetypeid,pageNum,pageSize);
	}
	
	//分页查询课程信息数据统计 by CourseTypeid
	public Long findCourseCountByPage(int coursetypeid) {
		return this.courseDaoImpl.findCourseCountByPage(coursetypeid);
	}
	
	
	
	//分页查询课程内容信息 by Courseid
	public List<CourseContent> findCourseContentByIdPage(int courseId, int pageNum, int pageSize) {
		return this.courseDaoImpl.findCourseContentByIdPage(courseId,pageNum,pageSize);
	}
	
	//分页查询课程内容信息数据统计 by Courseid
	public Long findCourseContentCountByPage(int courseId) {
		return this.courseDaoImpl.findCourseContentCountByPage(courseId);
	}

	public Course getCourseById1(int courseid) {
		// TODO Auto-generated method stub
		return this.courseDaoImpl.getCourseById1(courseid);
	}
	
	

}
