package com.od.service.ODMethod.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

@Repository
public class ODMethodDaoImpl {

	@Resource
	private SessionFactory sessionFactory;
	
}
