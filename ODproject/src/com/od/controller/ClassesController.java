package com.od.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.od.entity.Classes;
import com.od.entity.Course;
import com.od.entity.ODMethod;
import com.od.entity.User;
import com.od.service.ClassesServiceImpl;
import com.od.service.CourseServiceImpl;
import com.od.service.UserServiceImpl;
import com.sun.org.apache.xpath.internal.operations.Mod;

/**
*  
* Title: ClassesController  
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
@Controller
@RequestMapping(value="/classes") 
public class ClassesController {
	@Resource
	private ClassesServiceImpl classesServiceImpl;
	@Resource
	private CourseServiceImpl courseServiceImpl;
	@Resource
	private UserServiceImpl userServiceImpl;
	/**
	 * @param session
	 * @param model
	 * @return
	 */	
	@RequestMapping(value="/chooseCourse")
	public String chooseCourse(HttpSession session,
			Model model,@RequestParam("courseid")int courseid){
		User user =(User) session.getAttribute("user");
		if(user==null){
			model.addAttribute("errorLogin","请登录后进行选课");
			return "login";
		}
		ODMethod odMethod=user.getOdMethod();
		Course course = courseServiceImpl.getCourseById1(courseid);
		//判断课程是否被选择
		Classes classes = this.classesServiceImpl.checkCourse(courseid,odMethod.getId());
		if(classes!=null){
			model.addAttribute("error","已经选过此课程");
			return "redirect:/course/backstage/courseShow/classes/"+course.getCourseType().getId();
		}
		this.classesServiceImpl.chooseCourse(course,odMethod);
		return "redirect:/course/backstage/courseShow/classes/"+course.getCourseType().getId();
	}
	
	/**
	 * @param session
	 * @param model
	 * @param coursetypeid
	 * @return
	 */
	@RequestMapping(value="/chooseCourseType")
	public String chooseCourseType(HttpSession session,
			Model model,
			@RequestParam("coursetypeid")int coursetypeid){
		User user =(User) session.getAttribute("user");
		if(user==null){
			model.addAttribute("errorLogin","请登录后进行选课");
			return "login";
		}
		List<Course> courses = courseServiceImpl.getCourseById(coursetypeid); 
	    ODMethod odMethod=user.getOdMethod();
		this.classesServiceImpl.chooseCourse(courses,odMethod);
		return "redirect:/course/backstage/courseTypeShow/classes";
	}
	@RequestMapping(value="/getMyCourse")
	public String getMyCourse(HttpSession session,Model model) {
		User user = (User) session.getAttribute("user");
		User u = this.userServiceImpl.registCheck(user.getEmail());
		List<Course> courses = new ArrayList<Course>();
		Set<Classes> classes = u.getOdMethod().getClasses();
		for(Classes c:classes){
			courses.add(c.getCourse());
			System.out.println(c.getCourse().getName());
		}
		model.addAttribute("myCourse",courses);
		return "personalModel";
	}
}
