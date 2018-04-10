package com.od.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
@Entity
@Table(name="information")
public class Information {
	private int id;
	private int weight;  //体重
	private int height;  //身高
	private String birthday;  //生日 
	private String address;   //城市
	private String sports_base;  //运动基础
	private String target;  //运动目标：减脂 ， 局部塑形，增肌，保持健康
	private String hobby;   //兴趣爱好：健身  瑜伽  跑步  骑行   行走  其他  暂无
	private String fat_level;  //肥胖指数
	private User user;   //用户表一对一
	
	@Id
	@GeneratedValue(generator="my_gen")
	@GenericGenerator(name="my_gen",strategy="increment")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@OneToOne(mappedBy="information")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSports_base() {
		return sports_base;
	}
	public void setSports_base(String sports_base) {
		this.sports_base = sports_base;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getFat_level() {
		return fat_level;
	}
	public void setFat_level(String fat_level) {
		this.fat_level = fat_level;
	}
		
}
