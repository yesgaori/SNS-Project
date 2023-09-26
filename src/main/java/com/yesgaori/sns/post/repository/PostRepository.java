package com.yesgaori.sns.post.repository;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PostRepository {
	
	public int insertPost(
			@Param("userId") int userId
			,@Param("content") String content
			,@Param("imagePath") String imagePath
			);
	
	
	
}
