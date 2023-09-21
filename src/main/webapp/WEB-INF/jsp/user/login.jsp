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
			<section class="contents d-flex justify-content-center align-items-center">
				<div class="input-box my-5">
					<c:import url="/WEB-INF/jsp/include/logo.jsp" />
					<div class="text-center">
						<input type="text" placeholder="아이디" class="form-control mt-5" id="loginIdInput">
						<input type="password" placeholder="비밀번호" class="form-control mt-2" id="passwordInput">
						<button type="button"  class="btn btn-primary btn-block mt-3 mb-5" id="loginBtn">로그인</button>
						<div>회원이 아직 아니신가요 ? <a href="/user/join-view" class="">회원가입</a></div>
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
			
			$("#loginBtn").on("click", function() {
				
				let loginId = $("#loginIdInput").val();
				let password = $("#passwordInput").val();
				
				if(loginId == "") {
					alert("아이디를 입력하세요");
					return;
				}
				
				if(password == "") {
					alert("비밀번호를 입력하세요");
					return;
				}
				
				$.ajax({
					type:"post"
					, url:"/user/login"
					, data:{"loginId":loginId, "password":password}
					, success:function(data) {
						if(data.result == "success") {
							location.href = "/post/timeLine-view";
						} else {
							alert("아이디, 비밀번호를 확인 해 주세요");
						}
					}					
					, error:function() {
						alert("로그인 에러");
					}
				});
				
			});
			
			
			
		});
	
	</script>
</body>
</html>