package com.od.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import com.od.entity.Course;
import com.od.entity.CourseContent;
import com.od.entity.CourseType;
import com.od.entity.Page;
import com.od.entity.Score;
import com.od.entity.User;
import com.od.service.CourseServiceImpl;
import com.od.service.ScoreServiceImpl;

/**
 * 
*  
* Title: CourseController  
*
* Description: 关于课程方法的controller  
*
* Company: Old Driver
*
* @author lfy 
*
* @date 2018年5月29日  
*
 */ 
@Controller
@RequestMapping("/course")
public class CourseController {
	
	@Resource
	private CourseServiceImpl courseServiceImpl;
	@Resource
	private ScoreServiceImpl scoreServiceImpl;
	
	/**
	 * 课程类型分页展示
	 * @param model 向前端页面传值
	 * @param request 获取页码
	 * @param HTMLname 页面name，根据不同的页面返回不同的return
	 * @return 三种不同的返回页面
	 */
	@RequestMapping(value="/backstage/courseTypeShow/{HTMLname}",method=RequestMethod.GET)
	public String courseTypeShow(Model model,HttpServletRequest request,@PathVariable String HTMLname){
		//根据分页查询到课程类型的信息
		String pageNum=request.getParameter("pageNum");
		int num=0;
		if(pageNum==null || pageNum.equals("")){
			num=1;
		}else{
			num=Integer.parseInt(pageNum);
		}
		//课程类型查询数据统计
		Long count=courseServiceImpl.findCourseTypeCountByPage();
		//课程类型列表
		List<CourseType> courseTypes=courseServiceImpl.findByCourseTypePage(num, 9);
		//分页信息
		Page<CourseType> p=new Page<CourseType>(num, 9);
		p.setCurrentPageNum(num);
		p.setList(courseTypes);
		p.setTotalCount(count.intValue());
		//将分页信息和课程类型列表存入model中
		model.addAttribute("pageData", p);
		model.addAttribute("courseTypes", courseTypes);
		if(HTMLname.equals("header")){
			return "backstagemanager/CourseType";
		}
		if(HTMLname.equals("classes")){
			return "classes";
		}
			return "backstagemanager/Model";
	}
	/**
	 * 新添课程 后台管理
	 * @param file 上传图片
	 * @param typename 课程类型名称
	 * @param firsttime 第一次创建时间
	 * @param description 描述
	 * @param request 
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/backstage/CourseTypeInsert",method=RequestMethod.POST)
	public String CourseTypeInsert(@RequestParam(value="imgPath") MultipartFile file,
			String typename,String firsttime,String description,HttpServletRequest request,Model model) throws Exception{
		//设置图片路径
		Date date = new Date();
		SimpleDateFormat nowd = new SimpleDateFormat("yyyyMMdd_HHmmss");
		if(file.getSize()>0){
			//判断文件是否为 图片格式 
			String realfilename = file.getOriginalFilename();
			String lastfilename = realfilename.substring(realfilename.lastIndexOf("."));
			if(lastfilename.equals(".jpg")==false&&lastfilename.equals(".png")==false&&lastfilename.equals(".jpeg")==false){
				model.addAttribute("errorFile","请上传正确的图片");
				return "backstagemanager/CourseTypeForm";
			}
			//获取文件名作为保存到服务器的文件名()
			String filename=nowd.format(date)+"_"+file.getOriginalFilename();
			//前半部分路径，目录，将WebRoot下一个名称为images/coursetype文件夹转换为绝对路径
			String leftPath=request.getServletContext().getRealPath("/images/coursetype");
			//文件路径拼接
			File newFile=new File(leftPath,filename);
			//上传文件 
			file.transferTo(newFile);
			//添加courseType
			CourseType courseType = new CourseType();
			courseType.setImgPath("images/coursetype/"+filename);
			courseType.setTypename(typename);
			courseType.setFirsttime(firsttime);
			courseType.setDescription(description);
			this.courseServiceImpl.CourseTypeInsert(courseType);
		}
		return "forward:/backstage/courseTypeShow/header";
	}
		
	/**
	 * 后台管理 ，删除courseType By Id
	 * @param courseTypeId
	 * @return
	 */
	@RequestMapping(value="backstage/courseTypeDelete")
	public String courseTypeDelete(@RequestParam("courseTypeId")String courseTypeId,
			HttpServletRequest request){
		//根据id获取courseType
		int id = Integer.parseInt(courseTypeId); 
		CourseType courseType = this.courseServiceImpl.getCourseTypeById(id);
		//删除数据库中的数据
		this.courseServiceImpl.deleteCourseTypeById(courseType,request);
		return "forward:/course/backstage/courseTypeShow/header";
	}
	
	//课程分页展示 by courseType id
	@RequestMapping(value="backstage/courseShow/{HTMLname}/{coursetypeid}",method=RequestMethod.GET)
	public String courseShow(Model model,HttpServletRequest request,@PathVariable String HTMLname,
			@PathVariable String coursetypeid,HttpSession session){
		//根据分页查询到课程的信息
		String pageNum=request.getParameter("pageNum");
		int courseTypeId=Integer.parseInt(coursetypeid);
		int num=0;
		if(pageNum==null || pageNum.equals("")){
			num=1;
		}else{
			num=Integer.parseInt(pageNum);
		} 
		//课程查询数据统计
		Long count=courseServiceImpl.findCourseCountByPage(courseTypeId);
		//课程列表
		List<Course> courses=courseServiceImpl.findCourseByIdPage(courseTypeId,num, 9);
		//分页信息
		Page<Course> p=new Page<Course>(num, 9);
		p.setCurrentPageNum(num);
		p.setList(courses);
		p.setTotalCount(count.intValue());
		//将分页信息和课程列表存入model中
		model.addAttribute("pageData", p);
		model.addAttribute("courses", courses);
		model.addAttribute("courseTypeId",courseTypeId);
		if(HTMLname.equals("header")){
			return "backstagemanager/Course";
		}
		if(HTMLname.equals("classes")){
			//获取用户的评分信息
			User user =(User) session.getAttribute("user");
			if(user!=null){
				Map<Integer,Score> scores= new HashMap<Integer,Score>();
				for(Course c:courses){
					Score score = this.scoreServiceImpl.getScores(user.getId(), c.getId());
					if(score!=null){
						scores.put(c.getId(),score);
					}
				}
				if(scores.size()!=0){
					model.addAttribute("scores",scores);	
				}
				
			}
			return "classes";
		}
		return "backstagemanager/Model";
	}

	//课程分页展示 by courseid
	@RequestMapping(value="backstage/courseContentShow/{HTMLname}/{courseid}",method=RequestMethod.GET)
	public String courseContentShow(Model model,HttpServletRequest request,@PathVariable String HTMLname,
			@PathVariable String courseid){
		//根据分页查询到课程的信息
		String pageNum=request.getParameter("pageNum");
		int courseId=Integer.parseInt(courseid);
		int num=0;
		if(pageNum==null || pageNum.equals("")){
			num=1;
		}else{
			num=Integer.parseInt(pageNum);
		}
		//课程查询数据统计
		Long count=courseServiceImpl.findCourseContentCountByPage(courseId);
		//课程列表
		List<CourseContent> courseContents=courseServiceImpl.findCourseContentByIdPage(courseId,num, 9);
		//分页信息
		Page<CourseContent> p=new Page<CourseContent>(num, 9);
		p.setCurrentPageNum(num);
		p.setList(courseContents);
		p.setTotalCount(count.intValue());
		//将分页信息和课程列表存入model中
		model.addAttribute("pageData", p);
		model.addAttribute("CourseContents", courseContents);
		model.addAttribute("courseId",courseId);
		if(HTMLname.equals("header")){
			return "backstagemanager/CourseContent";
		}
		if(HTMLname.equals("classes")){
			return "classes";
		}
			return "backstagemanager/Model";
	}

}
