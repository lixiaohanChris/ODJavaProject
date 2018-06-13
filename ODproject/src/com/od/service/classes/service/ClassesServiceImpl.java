package com.od.service.classes.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.od.service.classes.dao.ClassesDaoImpl;

@Service
@Transactional(readOnly=false)
public class ClassesServiceImpl {
	@Resource
	private ClassesDaoImpl classesDaoImpl;
}
