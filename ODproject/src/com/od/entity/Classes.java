package com.od.entity;


import java.util.Set;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="classes")
public class Classes {
	
	private int id;   //id
	private String start_time;   //开始时间
	private String end_time;  //结束时间
	private Course course;  //课程多对一
	private ODMethod odMethod;   //方法多对一
	private String week;  //星期
	
	@Id
	@GeneratedValue(generator="my_gen")
	@GenericGenerator(name="my_gen",strategy="increment")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	//多对一，与课程建立关联
	@ManyToOne
	@JoinColumn(name="courseId")
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	
	//多对一，与推送方法建立关联
	@ManyToOne
	@JoinColumn(name="odmethodId")
	public ODMethod getOdMethod() {
		return odMethod;
	}
	public void setOdMethod(ODMethod odMethod) {
		this.odMethod = odMethod;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	public String getWeek() {
		return week;
	}
	public void setWeek(String week) {
		this.week = week;
	}
	
	
}
