package com.od.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.od.entity.Score;
import com.od.entity.User;
import com.od.service.ScoreServiceImpl;

@Controller
@RequestMapping("/score")
public class ScoreController {
	

	@Resource 
	private ScoreServiceImpl scoreServiceImpl;
	
	/**
	 * 评分
	 * @param score
	 * @param courseid
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/getScore/{courseid}",method=RequestMethod.POST)
	@ResponseBody
	public String getScore(@RequestParam("score")int score,@PathVariable int courseid,HttpSession session){
		User user = (User)session.getAttribute("user");
		if(user!= null){
			Score scores= this.scoreServiceImpl.getScores(user.getId(),courseid);
			if(scores!=null){
				return "isScore";
			}
			this.scoreServiceImpl.insertScore(user, courseid, score);
			double averagescore = this.scoreServiceImpl.getCourseAverageScoreById(courseid);
			this.scoreServiceImpl.insertAverageScoreByCourseid(courseid,averagescore);
			return "true";
		}else {
			return "unLogin";
		}
	}
}
