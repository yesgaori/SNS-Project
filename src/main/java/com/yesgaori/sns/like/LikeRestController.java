package com.yesgaori.sns.like;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.yesgaori.sns.like.service.LikeService;

@RestController
public class LikeRestController {

	
	@Autowired
	private LikeService likeService;
	
	@PostMapping("/post/like")
	public Map<String, String> like(
			@RequestParam("postId") int postId
			, HttpSession session) {
		
		int userId = (Integer)session.getAttribute("userId");
		
		int count = likeService.addLike(postId, userId);
		
		Map<String, String> resultMap = new HashMap<>();
		if(count == 1) {
			resultMap.put("result", "success");
		} else {
			resultMap.put("reslut", "fail");
		}
		return resultMap;
		
	}
}
