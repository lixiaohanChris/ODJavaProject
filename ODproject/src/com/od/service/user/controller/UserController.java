package com.od.service.user.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.od.service.user.service.UserServiceImpl;
import com.od.entity.User;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Resource
	private UserServiceImpl userServiceImpl;
	
	//验证邮箱是否注册过，Ajax
	@RequestMapping(value="/registCheck",method = RequestMethod.POST)
	@ResponseBody
	public boolean registCheck(@RequestParam("email")String email) throws ServletException, IOException{
		User u=this.userServiceImpl.registCheck(email);
		if(u!=null){
			return false;
		}else {
			return true;
		}
	}
	
	//用户注册
	@RequestMapping(value="/userRegist",method=RequestMethod.POST)
	public String userRegist(User user,Model model){
		this.userServiceImpl.registUser(user);
		model.addAttribute("email",user.getEmail());
		model.addAttribute("password",user.getPassword());
		return "forward:/user/userLogin";
	}
	
	//用户登录，将信息存入session中
	@RequestMapping(value="/userLogin",method = RequestMethod.POST)
	public String login(@RequestParam("email")String email,
			@RequestParam("password")String password,
		Model model,
		HttpSession session){
		User u=this.userServiceImpl.registCheck(email);
		//验证email和password
		//验证不通过
		if(u==null||!u.getPassword().equals(password)){
			model.addAttribute("loginError", "用户名或密码不正确");
			return "login";
		}
		//验证通过
		else{ 
			session.setAttribute("user", u);
			return "index";
		}
	}
	
	//注销用户
	@RequestMapping(value="/userExit")
	public String userExit(HttpSession session){
		session.invalidate();
		return "index";
	}
	
	//若注册用户时完善信息
	@RequestMapping(value="/userinfo",method=RequestMethod.POST)
	@ResponseBody
	public Boolean usertest(User user,HttpSession session){
		User u=this.userServiceImpl.registCheck(user.getEmail());
		if(u==null){
			this.userServiceImpl.registUser(user);
			session.setAttribute("user", user);
			return true;
		}else {
			return false;
		}
	}
	
}
