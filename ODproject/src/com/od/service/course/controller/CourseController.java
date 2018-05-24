package com.od.service.course.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
		return "classes";
	}
	

	//后台管理课程类型分页展示
	@RequestMapping(value="backstage/courseTypeShow/{HTMLname}",method=RequestMethod.GET)
	public String userList1(Model model,HttpServletRequest request,@PathVariable String HTMLname){
		//根据分页查询到课程类型的信息
		String pageNum=request.getParameter("pageNum");
		int num=0;
		if(pageNum==null || pageNum.equals("")){
			num=1;
		}else{
			num=Integer.parseInt(pageNum);
		}
		//用户查询数据统计
		Long count=courseServiceImpl.findCourseTypeCountByPage();
		//用户列表
		List<CourseType> courseTypes=courseServiceImpl.findByCourseTypePage(num, 8);
		//分页信息
		Page<CourseType> p=new Page<CourseType>(num, 8);
		p.setCurrentPageNum(num);
		p.setList(courseTypes);
		p.setTotalCount(count.intValue());
		//将分页信息和用户列表存入model中
		model.addAttribute("pageData", p);
		model.addAttribute("courseTypes", courseTypes);
		if(HTMLname.equals("header")){
			return "backstagemanager/CourseType";
		}
			return "backstagemanager/Model";
	}
	
	//后台管理课程类型加入
	@RequestMapping(value="/backstage/CourseTypeInsert",method=RequestMethod.POST)
	public String CourseTypeInsert(@RequestParam(value="imgPath") MultipartFile file,
			String typename,String firsttime,String description,HttpServletRequest request,Model model) throws Exception{
		//设置图片路径
		Date date = new Date();
		SimpleDateFormat nowd = new SimpleDateFormat("yyyyMMdd_HHmmss");
		if(file.getSize()>0){
			//获取文件名作为保存到服务器的文件名()
			String filename=nowd.format(date)+"_"+file.getOriginalFilename();
			//前半部分路径，目录，将WebRoot下一个名称为images文件夹转换为绝对路径
			String leftPath=request.getServletContext().getRealPath("/images");
			//文件路径拼接
			File newFile=new File(leftPath,filename);
			//上传文件
			file.transferTo(newFile);
			System.out.println(leftPath);
			System.out.println(newFile);
			//添加员工信息
			CourseType courseType = new CourseType();
			courseType.setImgPath("images/"+filename);
			courseType.setTypename(typename);
			courseType.setFirsttime(firsttime);
			courseType.setDescription(description);
			this.courseServiceImpl.CourseTypeInsert(courseType);
		}
		return "forward:/backstage/courseTypeShow/header";
	}
	//后台管理，CourseTypeInsert ajax显示图片
	@RequestMapping(value="backstage/imgAjax",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> imgAjax(@RequestParam(value="imgPath") MultipartFile file,HttpServletRequest request,Model model) throws Exception{
		//设置图片路径
				Date date = new Date();
				SimpleDateFormat nowd = new SimpleDateFormat("yyyyMMdd_HHmmss");
		if(file.getSize()>0){
			//获取文件名作为保存到服务器的文件名()
			String filename=nowd.format(date)+"_"+file.getOriginalFilename();
			//前半部分路径，目录，将WebRoot下一个名称为images文件夹转换为绝对路径
			String leftPath=request.getServletContext().getRealPath("/images");
			//文件路径拼接
			File newFile=new File(leftPath,filename);
			//上传文件
			file.transferTo(newFile);
			Map<String, String> map = new HashMap<String,String>();
			map.put("real", filename);
			return map;
			
		}else{
			return null;
		}
	}
	
	//课程展示
	@RequestMapping(value="/courseShow")
	public String courseTypeShow(Model model,@RequestParam("coursetypeid")String coursetypeid){
		List<Course> courseList = this.courseServiceImpl.getCourseById(coursetypeid);
		model.addAttribute("courseList", courseList);
		return "classes";
	}
	
	//课程内容展示
	@RequestMapping(value="/courseContentShow")
	public String courseContentShow(Model model,@RequestParam("courseid")String courseid){
		List<CourseContent> courseContentList=this.courseServiceImpl.getCourseContentById(courseid);
		model.addAttribute("courseContentList",courseContentList);
		return "classes";
	}
	
	
}
