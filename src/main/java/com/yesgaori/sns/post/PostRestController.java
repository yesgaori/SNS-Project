package com.yesgaori.sns.post;

import java.util.Map;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RequestMapping("/post")
@RestController
public class PostRestController {
	
	@PostMapping("/create")
	public Map<String, String>createPost(
			@RequestParam("content")String content
			,@RequestParam("imagePath") MultipartFile file) {
		
		
		
	}
	
	
}
