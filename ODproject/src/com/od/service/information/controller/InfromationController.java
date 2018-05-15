package com.od.service.information.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.od.entity.Information;
import com.od.entity.User;
import com.od.service.information.service.InformationServiceImpl;
import com.od.service.user.service.UserServiceImpl;


@Controller
@RequestMapping("/info")
public class InfromationController {
	
	@Resource
	private InformationServiceImpl informationServiceImpl;
	@Resource
	private UserServiceImpl userServiceImpl;
	
	
	
	//完善用户信息,修改用户信息
	@RequestMapping(value="/addInfo")
	public void addInfo(@RequestParam("height")int height,
			@RequestParam("weight")int weight,  //体重
			@RequestParam("YYYY")String birth_year,  //生日
			@RequestParam("MM")String birth_month,
			@RequestParam("DD")String birth_day,
			@RequestParam("s_province")String province, //城市
			@RequestParam("s_city")String city,
			@RequestParam("s_county")String county,
			@RequestParam("sports_base")String sports_base, //运动基础
			@RequestParam("targetList")String[] targetList,  //运动目标
			@RequestParam("hobbyList")String[] hobbyList, //运动喜好
			@RequestParam("fat_level")String fat_level, //肥胖等级  **后期可通过算法计算直接获得
			HttpSession session){
		//获取运动目标和运动习惯
		String target="";
		String hobby="";
		for(String tar:targetList){
			if(tar==targetList[targetList.length-1]){
				target += tar;
			}else {
				target += tar+"/";
			}
		}
		for(String hob:hobbyList){
			if(hob==hobbyList[hobbyList.length-1]){
				hobby += hob;
			}else {
				hobby += hob+"/";
			}
		}
		//获取用户信息
		User u = (User)session.getAttribute("user");
		Information info = u.getInformation();
		if(info==null){
			info = new Information();
		}
		//完善用户信息
		info.setWeight(weight);
		info.setHeight(height);
		info.setBirthday(birth_year+"/"+birth_month+"/"+birth_day);
		info.setAddress(province+"/"+city+"/"+county);
		info.setSports_base(sports_base);
		info.setTarget(target);	
		info.setHobby(hobby);
		info.setFat_level(fat_level);
		//数据持久化
		u.setInformation(info);
		info.setUser(u);
		this.userServiceImpl.updateUser(u);
	}
}
