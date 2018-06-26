package com.od.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.od.entity.ODMethod;
import com.od.entity.User;
import com.od.service.ODMethodServiceImpl;
import com.od.service.UserServiceImpl;


@Controller
@RequestMapping("/odMethod")
public class ODMethodController {
	
	@Resource
	private ODMethodServiceImpl odMethodServiceImpl;
	@Resource
	private UserServiceImpl userServiceImpl;
	
	
}
