package com.od.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
@Entity
@Table(name="information")
public class Information {
	
	private int id;
	private String name; //姓名
	private String sex; //性别（male or female）
	private String birthday;  //生日 
	private Address address;
	private String weight;  //体重
	private String height;  //身高
	private String sports_base;  //运动基础
	private String target;  //运动目标：减脂 ， 局部塑形，增肌，保持健康
	private String hobby;   //兴趣爱好：健身  瑜伽  跑步  骑行   行走  其他  暂无
	private String openness; //公开度
	private String fat_level; //肥胖度
	private String body_level; //体质等级
	private User user;   //用户表一对一
	private float bmi;
	
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
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="addressId")
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	
	public void setUser(User user) {
		this.user = user;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
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
	public String getOpenness() {
		return openness;
	}
	public void setOpenness(String openness) {
		this.openness = openness;
	}
	public String getBody_level() {
		return body_level;
	}
	public void setBody_level(String body_level) {
		this.body_level = body_level;
	}
	public float getBmi() {
		return bmi;
	}
	public void setBmi(float bmi) {
		this.bmi = bmi;
	}
		
}
