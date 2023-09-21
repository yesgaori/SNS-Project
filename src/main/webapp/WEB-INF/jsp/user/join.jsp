<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>

	<div id="wrap">
		<div class="d-flex justify-content-center">
		<section class="contents d-flex justify-content-center">
			<div class="input-box my-5">
				<div class="d-flex justify-content-center">
					<img src="/static/images/crab.png" width="30px">
				</div>
				<div class="d-flex justify-content-center mt-3">
					<img src="/static/images/user.png" width="50px">
				</div>
				<div class="text-center">
					<div class="d-flex align-items-center mt-5">
						<input type="text" placeholder="아이디" class="form-control" id="loginIdInput">
						<button type="button" class="btn btn-primary ml-3">중복확인</button>
					</div>
					<input type="password" placeholder="비밀번호" class="form-control mt-2" id="passwordInput">
					<input type="password" placeholder="비밀번호" class="form-control mt-2" id="passwordConfirmInput">
					<input type="text" placeholder="이름" class="form-control mt-2" id="nameInput">
					<input type="text" placeholder="이메일주소" class="form-control mt-2" id="emailInput">
					<button type="button"  class="btn btn-secondary btn-block mt-3 mb-5" id="joinBtn">새계정 만들기</button>
				</div>
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