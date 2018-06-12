package com.od.service.information.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.od.entity.Address;
import com.od.entity.Information;
import com.od.entity.User;
import com.od.service.information.dao.InformationDaoImpl;

@Service
@Transactional(readOnly=false)
public class InformationServiceImpl {
	
	@Resource 
	private InformationDaoImpl informationDaoImpl;

	//insertInfo,完善用户信息
	public void insertInfo(User user, Information info, Address add) {
		float height = Float.parseFloat(info.getHeight())/100;
		float weight = Float.parseFloat(info.getWeight());
		float bmi = weight/(height*height);
		this.informationDaoImpl.insertInfo(user,info,add,bmi);
	}

}
