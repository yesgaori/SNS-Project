<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타임라인</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
							<li class="list-group-item">홈</li>
							<li class="list-group-item">검색</li>
							<li class="list-group-item">탐색탭</li>
							<li class="list-group-item">만들기</li>
						</ul>
					<div>
						<c:if test="${not empty userId }">
							<div class="mr-3">${userName }님 <a href="/user/logout">로그아웃</a></div>
						</c:if>
					</div>
					</nav>
				</div>
			</div>
			<section class="col-9 contents">
				<div>
				
				</div>
			</section>
		</div>
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</body>
</html>