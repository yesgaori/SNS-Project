<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타임라인</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>
	<div id="wrap">
		<div class="d-flex">
			<div class="col-3">
				<header class="d-flex justify-content-center align-items-center">
					<img src="/static/images/crab.png" width="30px"><h1 class="ml-1">BlueCrab</h1>
				</header>
				<div>
					<nav class="timeLine-nav">
						<ul class="list-group">
							<li class="list-group-item"><a href="#" class="text-dark"><i class="bi bi-house-fill"></i>홈</a></li>
							<li class="list-group-item"><a href="#" class="text-dark"><i class="bi bi-search"></i>검색</a></li>
							<li class="list-group-item"><a href="#" class="text-dark"><i class="bi bi-geo-alt-fill"></i>탐색탭</a></li>
						</ul>
					<div>
						<c:if test="${not empty userId }">
							<div class="mr-3">${userLoginId }님 <a href="/user/logout">로그아웃</a></div>
						</c:if>
					</div>
					</nav>
				</div>
			</div>
			<section class="col-9 contents">
				<div class="d-flex justify-content-center m-3">
					<div class="col-8">
					<!-- 입력 상자 -->
					<div class="input-box border rounded">
						<textarea class="form-control border-0" rows="4" id="contentInput"></textarea>
						<div class="d-flex justify-content-between p-2">
							<input type="file" id="fileInput">
							<button type="button" class="btn btn-info btn-sm" id="addBtn">입력</button>
						</div>
					
					</div>		
					<!--  /입력상자 -->
						<c:forEach var="post" items="${postList }">
						<div class="card">
						
						<div class="d-flex justify-content-between card-list">
							<h4><i class="bi bi-person-square"></i>${post.loginId }</h4>
							<i class="bi bi-three-dots mr-2 mt-1"></i>
						</div>
						<img width="100%" src="${post.imagePath }">
						<div class="d-flex">
							<i class="bi bi-heart like-icon" data-post-id="${post.id }"></i><h4>좋아요 ${post.likeCount }개</h4>
						</div>
						<div class="d-flex">
							<h5>${post.loginId }</h5>
							<div>${post.content }</div>
						</div>
						<div class="d-flex">
							<i class="bi bi-person-square"></i>
							<div>
								<h4>ImPoobao</h4>
								<div>엄마! 나도 데리고 가요~</div>
							</div>
						</div>
						<div class="d-flex align-items-center contain">
							<input type="text" class="col-10 form-control "id="commentInput${post.id }"></input>
							<button type="button" class="btn btn-primary comment-btn" data-post-id="${post.id }">게시</button>
						</div>
						</div>
						</c:forEach>
					</div>
				</div>
			</section>
		</div>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
	<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script>
		$(document).ready(function() {
			
			$(".comment-btn").on("click", function() {
				
				let postId = $(this).data("post-id");
				
				$("#commentInput" + postId).val();
				
				$.ajax({
					type:"post"
					, url:"/post/comment/create"
					, data:{"postId":postId, "content":comment}
					, success:function(data) {
						
						if(data.result == "success") {
							location.reload();
							
						}else {
							alert("댓글 작성 실패")
						}
						
					}
					,error:function() {
						alert("댓글 작성 에러")
					}
				});
				
				
			});
			
			$(".like-icon").on("click", function() {
				
				let postId = $(this).data("post-id");
				
				$.ajax({
					type:"post"
					, url:"/post/like"
					, data:{"postId":postId}
					, success:function(data) {
						
						if(data.result == "success") {
							location.reload();
						} else {
							alert("좋아요 실패");
						}
						
					}
					, error:function() {
						alert("좋아요 에러");
					}
				});
				
				
			});
			
			$("#addBtn").on("click", function() {
				
				let content = $("#contentInput").val();
				let file = $("#fileInput")[0];
				
				if(content == "") {
					alert("내용을 입력하세요");
					return ;
				}
				
				// 파일에 대한 유효성 검사 
				if(file.files.length == 0) {
					alert("파일을 선택해 주세요");
					return ;
				}
				
				let formData = new FormData();
				formData.append("content", content);
				formData.append("imagePath", file.files[0]);
				
				$.ajax({
					type:"post"
					, url:"/post/create"
					, data:formData
					, enctype:"multipart/form-data"
					, processData:false
					, contentType:false
					, success:function(data) {
						if(data.result == "success") {
							location.reload();
						} else {
							alert("글쓰기 실패");
						}
						
					}
					, error:function() {
						alert("글쓰기 에러");
					}
				});
				
			});
			
			
		});
	
	</script>
</body>
</html>