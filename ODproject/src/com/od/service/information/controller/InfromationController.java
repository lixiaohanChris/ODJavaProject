package com.od.service.information.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.od.entity.Address;
import com.od.entity.Information;
import com.od.entity.User;
import com.od.service.information.service.InformationServiceImpl;
import com.od.service.user.service.UserServiceImpl;


@Controller
@RequestMapping("/info")
public class InfromationController {
	
	@Resource
	private InformationServiceImpl informationServiceImpl;
	@Resource
	private UserServiceImpl userServiceImpl;
	
	//注册时完善用户信息
	@RequestMapping(value="userInfo")
	public String userInfo(Information information,Address address
			,HttpSession session){
		if(session.getAttribute("insertS")!=null){
			return "error";
		}
		User user = (User)session.getAttribute("user");
		Information info = new Information();
		Address Add = new Address();
		info = information ;
		Add  = address;
		this.informationServiceImpl.insertInfo(user,info,Add);
		session.setAttribute("insertS", "insertS");
		return "index";
	}
}
