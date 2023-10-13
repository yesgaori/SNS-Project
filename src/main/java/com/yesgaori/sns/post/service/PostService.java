package com.yesgaori.sns.post.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.yesgaori.sns.comment.dto.CommentDetail;
import com.yesgaori.sns.comment.service.CommentService;
import com.yesgaori.sns.common.FileManager;
import com.yesgaori.sns.like.service.LikeService;
import com.yesgaori.sns.post.domain.Post;
import com.yesgaori.sns.post.dto.PostDetail;
import com.yesgaori.sns.post.repository.PostRepository;
import com.yesgaori.sns.user.domain.User;
import com.yesgaori.sns.user.service.UserService;

@Service
public class PostService {
	
	@Autowired
	private PostRepository postRepository;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private LikeService likeService;
	
	@Autowired
	private CommentService commentService;
	
	public int deletePost(int postId, Integer userId) {
		// 첨부된 파일 삭제
		Post post = postRepository.selectePost(postId);
		
		if(userId == null || post.getUserId() != userId) {
			return 0;
		}
		
		// 댓글 삭제
		commentService.deleteCommentByPostId(postId);
		// 좋아요 삭제
		likeService.deleteLikeByPostId(postId);
		
		FileManager.removeFile(post.getImagePath());
		
		return postRepository.deletePost(postId);
		
		
	}
	
	public int addPost(int userId, String content, MultipartFile file) {
		
		String imagePath = FileManager.saveFile(userId, file);
		
		return postRepository.insertPost(userId, content, imagePath);
		
	}
	
	public List<PostDetail> getPostList(int loginUserId) {
	
		List<Post> postList = postRepository.selectPostList();
		List<PostDetail> postDetailList = new ArrayList<>();
		for(Post post:postList) {
			
			int userId = post.getUserId();
			User user = userService.getUserById(userId);
			// 좋아요 개수 조회
			int likeCount = likeService.countLike(post.getId());
			boolean isLike = likeService.isLike(post.getId(), loginUserId);
			
			
			List<CommentDetail> commentList = commentService.getCommentList(post.getId());
			
			PostDetail postDetail = PostDetail.builder()
									.id(post.getId())
									.userId(userId)
									.content(post.getContent())
									.imagePath(post.getImagePath())
									.loginId(user.getLoginId())
									.likeCount(likeCount)
									.isLike(isLike)
									.commentList(commentList)
									.build();
			
			postDetailList.add(postDetail);
		}
		
		return postDetailList;
		
	}
	
	
}
