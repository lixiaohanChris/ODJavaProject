package com.od.service.classes.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.od.service.classes.service.ClassesServiceImpl;

@Controller
@RequestMapping(value="/classes")
public class ClassesController {
	@Resource
	private ClassesServiceImpl classesServiceImpl;
}
