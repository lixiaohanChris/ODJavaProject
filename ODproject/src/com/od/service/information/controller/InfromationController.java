package com.od.service.information.controller;

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
import com.od.service.information.service.InformationServiceImpl;
import com.od.service.user.service.UserServiceImpl;


@Controller
@RequestMapping("/info")
public class InfromationController {
	
	@Resource
	private InformationServiceImpl informationServiceImpl;
	@Resource
	private UserServiceImpl userServiceImpl;
	
	//完善用户信息
	@RequestMapping(value="/userInfo",method=RequestMethod.POST)
	public void userInfo(Information info,Address Add,
			HttpSession session){
		User user = (User)session.getAttribute("user");
		Information uInfo = user.getInformation();
		int id = uInfo.getId();
		uInfo = info;
		uInfo.setId(id);
		this.informationServiceImpl.insertInfo(user,uInfo,Add);
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
	
	
}
