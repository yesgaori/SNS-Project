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
				<c:import url="/WEB-INF/jsp/include/logo.jsp" />
				<div class="text-center">
					<h5 class="mt-3">회원가입을 하고, 친구들과 사진을 공유 해 보세요</h5>
					<div class="d-flex align-items-center mt-5">
						<input type="text" placeholder="아이디" class="form-control" id="loginIdInput">
						<button type="button" class="btn btn-primary ml-3" id="duplicateBtn">중복확인</button>
					</div>
					<h5 class="small d-none text-danger duplicateText">이미 사용중인 아이디 입니다</h5>
					<h5 class="small d-none text-success avaliableText">사용가능한 아이디 입니다</h5>
					<input type="password" placeholder="비밀번호" class="form-control mt-2" id="passwordInput">
					<input type="password" placeholder="비밀번호" class="form-control mt-2" id="passwordConfirmInput">
					<input type="text" placeholder="이름" class="form-control mt-2" id="nameInput">
					<input type="text" placeholder="이메일주소" class="form-control mt-2" id="emailInput">
					<button type="button"  class="btn btn-primary btn-block mt-3 mb-5" id="joinBtn">새계정 만들기</button>
				</div>
				<a href="/user/login-view">이미 회원입니다</div>
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
			// 중복확인 체크 여부
			var isCheckDuplicate = false;
			var isDuplicate = true;
			
			$("#loginIdInput").on("click", function() {
				isCheckDuplicate = false;
				isDuplicate = true;
				$(".avaliableText").addClass("d-none");
				$(".duplicateText").addClass("d-none");
			});
			
			$("#duplicateBtn").on("click", function() {
				let loginId = $("#loginIdInput").val();
				
				if(loginId == "") {
					alert("아이디를 입력하세요");
					return;
				}
				
				$.ajax({
					type:"get"
					, url:"/user/join/confirm"
					, data:{"loginId":loginId}
					, success:function(data) {
						isCheckDuplicate = true;
						if(data.isDuplicate == true) {
							// 중복 되었다
							$(".duplicateText").removeClass("d-none");
							$(".avaliableText").addClass("d-none");
							isDuplicate = true;
						} else {
							// 중복 되지 않았다
							$(".duplicateText").addClass("d-none");
							$(".avaliableText").removeClass("d-none");
							isDuplicate = false;
						}
					}
					, error:function() {
						alert("중복확인 에러!!")
						return;
					}
				});
				
				
				
				
			});
			
			
			$("#joinBtn").on("click", function() {
				let loginId = $("#loginIdInput").val();
				let password = $("#passwordInput").val();
				let passwordConfirm = $("#passwordConfirmInput").val();
				let name = $("#nameInput").val();
				let email = $("#emailInput").val();
				
				if(loginId == "") {
					alert("아이디를 입력하세요");
					return;
				} 
				
				// 중복체크가 안된경우
				if(!isCheckDuplicate) {
					alert("아이디 중복 체크를 해주세요")
					return;
				}
				
				// 중복된 아이디인 경우
				if(isDuplicate) {
					alert("중복된 아이디 입니다.")
					return;
				}
				
				if(password == "") {
					alert("비밀번호를 입력하세요");
					return;
				}
				
				if(password != passwordConfirm) {
					alert("비밀번호가 일치하지 않습니다")
					return;
				}
				
				if(name == "") {
					alert("이름을 입력하세요");
					return;
				}
				if(email == "") {
					alert("이메일을 입력하세요");
					return;
				}
				
				$.ajax({
					type:"post"
					, url:"/user/join"
					, data:{"loginId":loginId,"password":password,"name":name,"email":email}
					, success:function(data) {
						if(data.result == "success"){
							location.href = "/user/login-view";	
							
						} else {
							alert("회원가입 실패 !!")
						}
						
					}
					, error:function() {
						alert("회원가입 에러!!");
					}
				});
			});
			
			
		});
	</script>
</body>
</html>