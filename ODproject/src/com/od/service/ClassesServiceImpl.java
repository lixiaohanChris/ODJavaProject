package com.od.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.od.dao.ClassesDaoImpl;

@Service
@Transactional(readOnly=false)
public class ClassesServiceImpl {
	@Resource
	private ClassesDaoImpl classesDaoImpl;
}
