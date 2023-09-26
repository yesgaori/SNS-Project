<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타임라인</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
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
							<li class="list-group-item"><a href="#" class="text-dark"><i class="bi bi-magic"></i>만들기</a></li>
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
						<div class="d-flex justify-content-between mt-5">
							<h4><i class="bi bi-person-square"></i>i.bao</h4>
							<i class="bi bi-three-dots"></i>
						</div>
						<img width="100%" src="https://cdn.pixabay.com/photo/2023/08/05/15/42/panda-8171354_1280.jpg">
						<div class="d-flex">
							<i class="bi bi-heart"></i><h4>좋아요 128 개</h4>
						</div>
						<div class="d-flex">
							<h5>i.bao</h5>
							<div>여기 대나무 맛집이야, 근처에 오면 꼭 방문 해봐!</div>
						</div>
						<div class="d-flex">
							<i class="bi bi-person-square"></i>
							<div>
								<h4>ImPoobao</h4>
								<div>엄마! 나도 데리고 가요~</div>
							</div>
						</div>
						<div class="d-flex align-items-center contain">
							<input type="text" class="col-10 form-control"></input>
							<button type="button" class="btn btn-primary">올리기</button>
						</div>
					</div>
				</div>
								<div class="d-flex justify-content-center m-3">
					<div class="col-8">
						<div class="d-flex justify-content-between mt-5">
							<h4><i class="bi bi-person-square"></i>i.bao</h4>
							<i class="bi bi-three-dots"></i>
						</div>
						<img width="100%" src="https://cdn.pixabay.com/photo/2023/08/05/15/42/panda-8171354_1280.jpg">
						<div class="d-flex">
							<i class="bi bi-heart"></i><h4>좋아요 128 개</h4>
						</div>
						<div class="d-flex">
							<h5>i.bao</h5>
							<div>여기 대나무 맛집이야, 근처에 오면 꼭 방문 해봐!</div>
						</div>
						<div class="d-flex">
							<i class="bi bi-person-square"></i>
							<div>
								<h4>ImPoobao</h4>
								<div>엄마! 나도 데리고 가요~</div>
							</div>
						</div>
						<div class="d-flex align-items-center contain">
							<input type="text" class="col-10 form-control"></input>
							<button type="button" class="btn btn-primary">올리기</button>
						</div>
					</div>
				</div>
								<div class="d-flex justify-content-center m-3">
					<div class="col-8">
						<div class="d-flex justify-content-between mt-5">
							<h4><i class="bi bi-person-square"></i>i.bao</h4>
							<i class="bi bi-three-dots"></i>
						</div>
						<img width="100%" src="https://cdn.pixabay.com/photo/2023/08/05/15/42/panda-8171354_1280.jpg">
						<div class="d-flex">
							<i class="bi bi-heart"></i><h4>좋아요 128 개</h4>
						</div>
						<div class="d-flex">
							<h5>i.bao</h5>
							<div>여기 대나무 맛집이야, 근처에 오면 꼭 방문 해봐!</div>
						</div>
						<div class="d-flex">
							<i class="bi bi-person-square"></i>
							<div>
								<h4>ImPoobao</h4>
								<div>엄마! 나도 데리고 가요~</div>
							</div>
						</div>
						<div class="d-flex align-items-center contain">
							<input type="text" class="col-10 form-control"></input>
							<button type="button" class="btn btn-primary">올리기</button>
						</div>
					</div>
				</div>
								<div class="d-flex justify-content-center m-3">
					<div class="col-8">
						<div class="d-flex justify-content-between mt-5">
							<h4><i class="bi bi-person-square"></i>i.bao</h4>
							<i class="bi bi-three-dots"></i>
						</div>
						<img width="100%" src="https://cdn.pixabay.com/photo/2023/08/05/15/42/panda-8171354_1280.jpg">
						<div class="d-flex">
							<i class="bi bi-heart"></i><h4>좋아요 128 개</h4>
						</div>
						<div class="d-flex">
							<h5>i.bao</h5>
							<div>여기 대나무 맛집이야, 근처에 오면 꼭 방문 해봐!</div>
						</div>
						<div class="d-flex">
							<i class="bi bi-person-square"></i>
							<div>
								<h4>ImPoobao</h4>
								<div>엄마! 나도 데리고 가요~</div>
							</div>
						</div>
						<div class="d-flex align-items-center contain">
							<input type="text" class="col-10 form-control"></input>
							<button type="button" class="btn btn-primary">올리기</button>
						</div>
					</div>
				</div>
			</section>
		</div>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script>
		$(document).ready(function() {
			
			// 파일에 대한 유효성 검사
			if(file.files.length == 0) {
				alert("파일을 선택해 주세요")
				return;
			}
			
			
		});
	
	</script>
</body>
</html>