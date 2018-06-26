package com.od.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.od.entity.Classes;
import com.od.entity.Course;
import com.od.entity.CourseContent;
import com.od.entity.CourseType;
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
	
	/**
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/getMyCourse/{showType}",method=RequestMethod.POST)
	public String getMyCourse(HttpSession session,Model model,
			@PathVariable String showType,
			@RequestParam("getId")String getId) {
		User user = (User) session.getAttribute("user");
		User u = this.userServiceImpl.registCheck(user.getEmail());
		Set<Classes> classes = u.getOdMethod().getClasses();
		System.out.println(showType);
		if(showType.equals("courseType")){
			Set<CourseType> courseTypes = new HashSet<CourseType>();
			for(Classes c:classes){
				courseTypes.add(c.getCourse().getCourseType());
			}
			model.addAttribute("CourseTypes",courseTypes);
		}
		if(showType.equals("courseByTypeId")){
			int id =Integer.parseInt(getId);
			Set<Course> courses = new HashSet<Course>();
			for(Classes c:classes){
				if(c.getCourse().getCourseType().getId()==id){
					courses.add(c.getCourse());
				}
			}
			model.addAttribute("coursesByTypeId",courses);
		}
		if(showType.equals("courseContent")){
			int id =Integer.parseInt(getId);
			for(Classes c:classes){
				if(c.getCourse().getId()==id){
					Set<CourseContent> courseContents=c.getCourse().getCourseContents();
					model.addAttribute("courseContents",courseContents);
					return "personalModel";
				}
			}
		}
		if(showType.equals("course")){
			Set<Course> courses = new HashSet<Course>();
			for(Classes c:classes){
				courses.add(c.getCourse());
			}
			model.addAttribute("courses",courses);
		}
		return "personalModel";
	}
}
