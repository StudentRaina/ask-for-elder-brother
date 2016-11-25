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
		$(location).attr("href", "join_tos");
	});	


	
	
});
</script>
</head>
<body>
<form method="post" id="loginForm">
	<table>
		<tr>
			<td>아이디</td>
			<td>
				<input type="text" name="user_id" />
			</td>
			<td rowspan="2">
				<input type="button" value="로그인" id="loginBtn"/>
			</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td>
				<input type="password" name="user_password" />
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