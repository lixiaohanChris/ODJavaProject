package com.od.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
@Entity
@Table(name="course")
public class Course {
	
	private int id;
	private String name;
	private String introduce;
	private CourseType courseType;
	private Set<Classes> classes = new HashSet<Classes>();
	private Set<CourseContent> courseContents = new HashSet<CourseContent>();
	
	@Id
	@GeneratedValue(generator="my_gen")
	@GenericGenerator(name="my_gen",strategy="increment")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@OneToMany(mappedBy="course", targetEntity=Classes.class, 
            cascade=CascadeType.ALL)
	public Set<Classes> getClasses() {
		return classes;
	}
	
	public void setClasses(Set<Classes> classes) {
		this.classes = classes;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public CourseType getCourseType() {
		return courseType;
	}
	public void setCourseType(CourseType courseType) {
		this.courseType = courseType;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public Set<CourseContent> getCourseContents() {
		return courseContents;
	}
	public void setCourseContents(Set<CourseContent> courseContents) {
		this.courseContents = courseContents;
	}
	
}
