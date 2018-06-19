package com.od.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.od.dao.CommendDaoImpl;
import com.od.entity.Course;
import com.od.entity.Score;
import com.od.entity.User;

@Service
@Transactional(readOnly = false)
public class CommendServiceImpl {
	@Resource
	private CommendDaoImpl commendDaoImpl;
	
	public Set<Course> getCommend(User u) {
		//登录用户5分评价
		List<Score> scores = commendDaoImpl.findScoreByUserId(u);
		//全体用户
		List<User> users = commendDaoImpl.findUserByUserId(u);
		//相似度列表
		Map<User, Double> similarityMap = new HashMap<>();
		//最大相似度
		Double maxSimilarity = 0.00;
		for(User user:users){
			//相似度
			Double similarity;
			//公式分子
			int numerator = 0;
			for(Score score:scores){
				int count = commendDaoImpl.findCountByCourseIdAndUserId(score.getCourse().getId(),user.getId());
				numerator += count;
			}
			//5分评价
			List <Score> scores2 = commendDaoImpl.findScoreByUserId(user);
			//公式分母
			Double denominator = Math.sqrt(scores.size()*scores2.size());
			//相似度
			if(denominator == 0){
				similarity = 0.00;
			}else {
				similarity = numerator/denominator;
			}
			similarityMap.put(user, similarity);
			if(similarity > maxSimilarity){
				maxSimilarity = similarity;
			}
		}
		//最大相似用户
		List<User> maxSimilarUsers = new ArrayList<User>();
		
		for(Entry<User, Double> entry : similarityMap.entrySet()){
			if(maxSimilarity.equals(entry.getValue())){
				maxSimilarUsers.add(entry.getKey());
			}
		}
		//基于用户的协同过滤推荐课程
		Set<Course> courses = new HashSet<Course>();
		for(User maxSimilarUser:maxSimilarUsers){
			for(Score c:maxSimilarUser.getScore()){
				if(c.getScore()==5&&this.commendDaoImpl.findScoreByCourseIdAndUserId(c.getCourse(), u)==null
						&&this.commendDaoImpl.findCourseByCourseIdAndODMethodId(u.getOdMethod(),c.getCourse())==null){
					courses.add(c.getCourse());
				}
			}
		}
		return courses;
	}
}
