package com.od.service.information.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.od.service.information.service.InformationServiceImpl;


@Controller
@RequestMapping("/info")
public class InfromationController {
	
	@Resource
	private InformationServiceImpl informationServiceImpl;
	
	//完善用户信息
	@RequestMapping(value="addInfo")
	public void addInfo(){
		
	}
}
