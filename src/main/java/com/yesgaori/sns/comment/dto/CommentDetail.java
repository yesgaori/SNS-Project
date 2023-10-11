package com.yesgaori.sns.comment.dto;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder	
public class CommentDetail {
	
	private int userId;
	private String content;
}
