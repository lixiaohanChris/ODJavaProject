package com.tgb.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class HelloWorldController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
		
		System.out.println("-------hello world--");
		
		String hello = "lxh hello 呵呵";
		return new ModelAndView("/welcome", "result", hello);
		
		
	}
	
}
