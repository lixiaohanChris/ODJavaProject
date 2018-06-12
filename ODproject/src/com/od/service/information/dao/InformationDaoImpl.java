package com.od.service.information.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.od.entity.Address;
import com.od.entity.Information;
import com.od.entity.User;
import com.sun.xml.internal.messaging.saaj.packaging.mime.internet.BMMimeMultipart;

@Repository
public class InformationDaoImpl {

	@Resource
	private SessionFactory sessionFactory;
	
	//完善用户信息（user表内没有informationId）
	public void insertInfo(User user, Information info, Address Add,float bmi) {
		info.setAddress(Add);
		Add.setInformation(info);
		info.setBmi(bmi);
		this.sessionFactory.getCurrentSession().update(info);
	}

}
