package com.yesgaori.sns.post;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.yesgaori.sns.post.service.PostService;

@RequestMapping("/post")
@RestController
public class PostRestController {
	
	@Autowired
	private PostService postService;
	
	@DeleteMapping("/delete")
	public Map<String, String> deletePost(@RequestParam("postId") int postId) {
		
		int count = postService.deletePost(postId);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
		
	}
	
	@PostMapping("/create")
	public Map<String, String> createPost(
			@RequestParam("content") String content
			,@RequestParam("imagePath") MultipartFile file
			, HttpSession session) {
		
		int userId = (Integer)session.getAttribute("userId");
		
		int count = postService.addPost(userId, content, file);
		
		Map<String, String> resultMap = new HashMap<>();
		if(count == 1) {
			resultMap.put("result", "success");
		} else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;
	}
	
	
}
