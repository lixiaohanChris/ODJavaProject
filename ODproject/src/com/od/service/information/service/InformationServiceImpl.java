package com.od.service.information.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.od.service.information.dao.InformationDaoImpl;

@Service
@Transactional(readOnly=false)
public class InformationServiceImpl {
	
	@Resource 
	private InformationDaoImpl informationDaoImpl;

}
