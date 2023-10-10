package com.yesgaori.sns.comment.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yesgaori.sns.comment.repository.CommentRepository;

@Service
public class CommentService {
	
	@Autowired
	private CommentRepository commentRepository;
	
	public int addComment(int userId, int postId, String content) {
		
		return commentRepository.insertComment(userId, postId, content);
	}

	
}
