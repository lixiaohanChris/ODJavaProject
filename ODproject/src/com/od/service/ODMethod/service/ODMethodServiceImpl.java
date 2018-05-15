package com.od.service.ODMethod.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.od.entity.ODMethod;
import com.od.service.ODMethod.dao.ODMethodDaoImpl;

@Service
@Transactional(readOnly=false)
public class ODMethodServiceImpl {

	@Resource
	private ODMethodDaoImpl odMethodDaoImpl;

	public void addMD(ODMethod md) {
		
	}
}
