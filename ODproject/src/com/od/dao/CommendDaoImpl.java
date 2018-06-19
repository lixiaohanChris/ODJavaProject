package com.od.dao;

import java.util.List;
import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.od.entity.Score;
import com.od.entity.User;

@Repository
public class CommendDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public List<Score> findScoreByUserId(User u) {
		Query query = this.sessionFactory.getCurrentSession().createQuery("select * from score where userid ="+u.getId()+"and score = 5");
		return query.list();
	}

	public List<User> findUserByUserId() {
		Query query = this.sessionFactory.getCurrentSession().createQuery("select * from user");
		return query.list();
	}

}
