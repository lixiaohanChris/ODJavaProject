package com.od.service.course.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.od.entity.Course;
import com.od.entity.CourseContent;
import com.od.entity.CourseType;
import com.od.service.course.service.CourseServiceImpl;

@Controller
@RequestMapping("/course")
public class CourseController {
	
	@Resource
	private CourseServiceImpl courseServiceImpl;
	
	//课程类型展示
	@RequestMapping(value="/courseTypeShow")
	public String courseTypeShow(Model model){
		//遍历数据库中的coursetype 
		List<CourseType> courseTypesList=this.courseServiceImpl.getAllcourseType();
		
		model.addAttribute("courseTypeList", courseTypesList);
		return "test";
	}
	
	//课程展示
	@RequestMapping(value="/courseShow")
	public String courseTypeShow(Model model,@RequestParam("coursetypeid")String coursetypeid){
		List<Course> courseList = this.courseServiceImpl.getCourseById(coursetypeid);
		model.addAttribute("courseList", courseList);
		return "test";
	}
	
	//课程内容展示
	@RequestMapping(value="/courseContentShow")
	public String courseContentShow(Model model,@RequestParam("courseid")String courseid){
		List<CourseContent> courseContentList=this.courseServiceImpl.getCourseContentById(courseid);
		model.addAttribute("courseContentList",courseContentList);
		return "test";
	}
}
