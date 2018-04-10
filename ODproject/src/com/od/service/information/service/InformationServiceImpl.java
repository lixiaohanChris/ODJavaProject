package com.od.service.information.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.od.entity.Information;
import com.od.service.information.dao.InformationDaoImpl;

@Service
@Transactional(readOnly=false)
public class InformationServiceImpl {
	
	@Resource 
	private InformationDaoImpl informationDaoImpl;

	public void addInfo(Information info) {
		this.informationDaoImpl.addInfo(info);
	}

	public void updateInfo(Information info) {
		this.informationDaoImpl.updateInfo(info);
	}

}
