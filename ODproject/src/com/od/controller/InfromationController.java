package com.od.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.od.entity.Address;
import com.od.entity.Information;
import com.od.entity.User;
import com.od.service.InformationServiceImpl;
import com.od.service.UserServiceImpl;

@Controller
@RequestMapping("/info")
public class InfromationController {
	
	@Resource
	private InformationServiceImpl informationServiceImpl;
	@Resource
	private UserServiceImpl userServiceImpl;
	
	//完善用户信息
	@RequestMapping(value="/userInfo",method=RequestMethod.POST)
	public String userInfo(Information info,Address Add,
			HttpSession session){
		User user = (User)session.getAttribute("user");
		Information uInfo = user.getInformation();
		int id = uInfo.getId();
		uInfo = info;
		uInfo.setId(id);
		this.informationServiceImpl.insertInfo(uInfo,Add);
		User u = this.userServiceImpl.registCheck(user.getEmail());
		session.setAttribute("user", u);
		return "personal";
	}
	
	//注册时完善用户信息,Ajax验证是否选择地址
	@RequestMapping(value="/userInfoAjax",method=RequestMethod.POST)
	@ResponseBody
	public boolean userInfoAjax(
			@RequestParam("province")String province,
			@RequestParam("city")String city,
			@RequestParam("area")String area,
			Model model){
		if(province==""||city==""||area==""){
			return false;
		}
		else{
			return true;
		}
	}
	
	@RequestMapping(value="/getInfo")
	public String getInfo(Model model,HttpSession session){
		User user = (User) session.getAttribute("user");
		User u = this.userServiceImpl.registCheck(user.getEmail());
		model.addAttribute("userinfo", u.getInformation());
		return "userinfo";
	}
	@RequestMapping(value="/getUserInfo")
	public String getUserInfo(Model model,HttpSession session){
		User user = (User) session.getAttribute("user");
		User u = this.userServiceImpl.registCheck(user.getEmail());
		model.addAttribute("user", u);
		return "personal";
	}
	
	@RequestMapping(value="/getInfoAjax",method=RequestMethod.POST)
	public String getInfoAjax(HttpSession session,Model model){
		User u= (User) session.getAttribute("user");
		String id = u.getEmail();
		User user = this.userServiceImpl.registCheck(id);
		model.addAttribute("userInfo", user);
		return "personalModel";
	}
}
