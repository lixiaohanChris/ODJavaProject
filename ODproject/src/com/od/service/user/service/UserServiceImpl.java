package com.od.service.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.od.entity.Address;
import com.od.entity.Information;
import com.od.entity.ODMethod;
import com.od.entity.User;
import com.od.service.user.dao.UserDaoImpl;
@Service
@Transactional(readOnly=false)
public class UserServiceImpl {
	
	@Resource
	public UserDaoImpl userDaoImpl;
	
	//用户注册邮箱验证
	public User registCheck(String email) {
		return this.userDaoImpl.registCheck(email);
	}
	
	//用户注册
	public void registUser(User user,Information info,ODMethod odm) {
		this.userDaoImpl.registUser(user,info,odm);
	}
	//更新用户信息
	public void updateUser(User u) {
		this.userDaoImpl.updateUser(u);
	}
}
