package com.od.entity;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

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
	private String img;
	private String count;
	private Set<Score> score;
	private double averageScore;  
	private String firsttime;
	private String lasttime;

	//使用人数
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
	
	@ManyToOne
	@JoinColumn(name="coursetypeId")
	public CourseType getCourseType() {
		return courseType;
	}
	public void setCourseType(CourseType courseType) {
		this.courseType = courseType;
	}
	
	@OneToMany(mappedBy="course",targetEntity=CourseContent.class,
			cascade=CascadeType.ALL)
	public Set<CourseContent> getCourseContents() {
		return courseContents;
	}
	public void setCourseContents(Set<CourseContent> courseContents) {
		this.courseContents = courseContents;
	}
	@Transient
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	@OneToMany(mappedBy="course",targetEntity=Score.class,
			cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	public Set<Score> getScore() {
		return score;
	}
	public void setScore(Set<Score> score) {
		this.score = score;
	}
	public double getAverageScore() {
		return averageScore;
	}
	public void setAverageScore(double averageScore) {
		this.averageScore = averageScore;
	}
	public String getFirsttime() {
		return firsttime;
	}
	public void setFirsttime(String firsttime) {
		this.firsttime = firsttime;
	}
	public String getLasttime() {
		return lasttime;
	}
	public void setLasttime(String lasttime) {
		this.lasttime = lasttime;
	}
	
}
