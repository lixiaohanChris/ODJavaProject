package com.od.service.information.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.od.entity.Information;

@Repository
public class InformationDaoImpl {

	@Resource
	private SessionFactory sessionFactory;
	
	//如果没有用户信息，添加用户信息
	public void addInfo(Information info) {
		this.sessionFactory.getCurrentSession().save(info);
	}

}
