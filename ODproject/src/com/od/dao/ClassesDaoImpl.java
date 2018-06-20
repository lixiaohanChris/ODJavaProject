package com.od.dao;

import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.od.entity.Classes;
import com.od.entity.Course;
import com.od.entity.ODMethod;

@Repository
public class ClassesDaoImpl {
	@Resource
	private SessionFactory sessionFactory;

	public void chooseCourse(Classes classes) {
		// TODO Auto-generated method stub
		this.sessionFactory.getCurrentSession().save(classes);
	}
}
