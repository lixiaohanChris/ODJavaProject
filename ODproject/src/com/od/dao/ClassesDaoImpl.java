package com.od.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

@Repository
public class ClassesDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
}
