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
@Table(name="user")
public class User {
	private int id;
	private String email;   //邮箱
	private String username;  //用户名
	private String password;   //密码
	private String phone_number;  //手机号
	private Information information;   //信息表一对一
	private ODMethod odMethod;  //方法表一对一
	
	@Id
	@GeneratedValue(generator="my_gen")
	@GenericGenerator(name="my_gen",strategy="increment")
	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id=id;
	}
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="informationId")
	public Information getInformation() {
		return information;
	}
	public void setInformation(Information information) {
		this.information = information;
	}
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="methodId")
	public ODMethod getOdMethod() {
		return odMethod;
	}
	public void setOdMethod(ODMethod odMethod) {
		this.odMethod = odMethod;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	
}
