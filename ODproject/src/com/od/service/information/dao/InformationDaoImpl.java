package com.od.service.information.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

@Repository
public class InformationDaoImpl {

	@Resource
	private SessionFactory sessionFactory;
}
