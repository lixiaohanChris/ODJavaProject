package com.od.service.information.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.od.entity.Information;

@Repository
public class InformationDaoImpl {

	@Resource
	private SessionFactory sessionFactory;

	public void addInfo(Information info) {
		this.sessionFactory.getCurrentSession().save(info);
	}

	public void updateInfo(Information info) {
		this.sessionFactory.getCurrentSession().update(info);
	}
}
