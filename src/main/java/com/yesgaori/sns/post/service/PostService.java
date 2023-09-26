package com.yesgaori.sns.post.service;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.yesgaori.sns.common.FileManager;

@Service
public class PostService {
	
	public int addPost(String contentm, MultipartFile imagePath) {
		
		
		String imagePath = FileManager.saveFile(userId, file);
	}
	
	
}
