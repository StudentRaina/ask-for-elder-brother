<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.sub_login{
	width: 500px;
	height: 65px;
	display: inline-block; 
	background-color: #D5D5D5;
}

</style>
<script type="text/javascript" 
		src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#joinBtn").on("click", function() {
		location.href="join_tos";
	});//회원가입 페이로 이동

	
	$("#loginBtn").on("click", function() {
		if($.trim($("#user_id").val()) == ""){
			alert("아이디를 입력해주세요.");
			$("#user_id").focus();
		}else if($.trim($("#user_password").val()) == ""){
			alert("비밀번호를 입력해주요.");
			$("#user_password").focus();
		}else{
			var login_params = $("loginForm").serialize();
			
			$.ajax({
				type : "post",
				url : "loginConfAjax",
				dataType : "json",
				data : login_params,
				success : function(result) {
					if(result.res == "success"){
						location.href = "";
					}else {
						alert("가입된 회원아이디가 아니거나 비밀번호가 틀립니다."); 
						alert("비밀번호는 대소문자를 구분합니다.");
						$("#user_id").focus();
					}
				},
				error : function(result) {
					alert("웹 페이지에 문제가 있어 올바르게 표시되지 않았습니다.");
				}			
			});				
		}		
	});//로그인 Ajax
	

	
	
});
</script>
</head>
<body>
<form method="post" id="loginForm">
	<table>
		<tr>
			<td>아이디</td>
			<td>
				<input type="text" name="user_id" id="user_id" />
			</td>
			<td rowspan="2">
				<input type="button" value="로그인" id="loginBtn"/>
			</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td>
				<input type="password" name="user_password" id="user_password" />
			</td>
		</tr>
	</table>
</form>

<div class="sub_login">
	<form method="post" id="joinForm">
		FUNSKING 회원이 아니신가요?
		<input type="button" value="회원가입" id="joinBtn"/>
	</form>
	<form method="post" id="id_password_viewFrom">
		아이디 /비밀번호를 잊으셨나요?
		<input type="button" value="아이디/비밀번호 찾기" id="id_password_viewBtn"/>
	</form>
</div>


</body>
</html>