package com.od.service.information.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.od.entity.Address;
import com.od.entity.Information;
import com.od.entity.User;
import com.od.service.information.dao.InformationDaoImpl;

@Service
@Transactional(readOnly = false)
public class InformationServiceImpl {

	@Resource
	private InformationDaoImpl informationDaoImpl;

	// insertInfo,完善用户信息
	public void insertInfo(User user, Information info, Address add) {
		float height = Float.parseFloat(info.getHeight()) / 100;
		float weight = Float.parseFloat(info.getWeight());
		float bmi = weight / (height * height);
		String fat_level;
		if (bmi <= 18.4) {
			fat_level = "偏瘦";
		} else if (bmi > 18.4 && bmi <= 23.9) {
			fat_level = "正常";
		} else if (bmi > 23.9 && bmi <= 27.9) {
			fat_level = "过重";
		}else {
			fat_level = "肥胖";
		}
		this.informationDaoImpl.insertInfo(user, info, add, bmi, fat_level);
	}

}
