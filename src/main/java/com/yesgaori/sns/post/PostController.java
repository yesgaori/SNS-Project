package com.yesgaori.sns.post;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/post")
@Controller
public class PostController {
	
	
	@GetMapping("/timeLine-view")
	public String timeLine() {
		
		return "post/timeLine";
	}
}
