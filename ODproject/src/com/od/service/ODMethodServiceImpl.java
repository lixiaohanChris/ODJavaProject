package com.od.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.od.dao.ODMethodDaoImpl;
import com.od.entity.ODMethod;

@Service
@Transactional(readOnly=false)
public class ODMethodServiceImpl {

	@Resource
	private ODMethodDaoImpl odMethodDaoImpl;

	public void addMD(ODMethod md) {
		
	}
}
