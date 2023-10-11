package com.yesgaori.sns.like.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yesgaori.sns.like.repository.LikeRepository;

@Service
public class LikeService {
	
	@Autowired
	private LikeRepository likeRepository;
	
	public int addLike(int postId, int userId) {
		return likeRepository.insertLike(postId, userId);
	}
	
	public int countLike(int postId) {
		return likeRepository.selectCountLike(postId);
	}
	
}
