package com.od.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.od.entity.Information;
import com.od.entity.ODMethod;
import com.od.entity.User;

@Repository
public class UserDaoImpl {
	
	@Resource
	private SessionFactory sessionFactory;
	
	//验证邮箱是否注册
	public User registCheck(String email) {
		Query query = this.sessionFactory.getCurrentSession().createQuery("from User u where u.email = ?");
		query.setString(0, email);
		return (User) query.uniqueResult();
	}
	
	//用户注册
	public void registUser(User user,Information info,ODMethod odm) {
		user.setInformation(info);
		user.setOdMethod(odm);
		odm.setUser(user);
		info.setUser(user);
		this.sessionFactory.getCurrentSession().save(user);
	}
	
	//更新用户信息
	public void updateUser(User u) {
		this.sessionFactory.getCurrentSession().update(u);
	}
}
