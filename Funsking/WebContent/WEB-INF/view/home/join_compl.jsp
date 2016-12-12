<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

.join_compl_div{
	width: 600px;
	height: 100px;
	display: inline-block;
	border : 2pt solid #000000;
}

.join_compl_sub{
	width: 500px;
	height: 20px;
	display: inline-block;
	background-color: #D5D5D5;
}

</style>
<script type="text/javascript" 
		src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	$("#home_move").on("click", function() {
		location.href = "home1";
	});
	
	$("#login_move").on("click", function() {
		location.href = "login";
	});
	
});

</script>
</head>
<body>
<form method="post" id="Join_ComplForm">
	<div class="join_compl_div">
		FUN' S KING IN SEOUL 회원가입 완료!
		회원가입을 축하드립니다.
		<div class="join_compl_sub">
			가입이 완료되었습니다. 회원님의 아이디는 ${sInsertID}입니다.
		</div>
	</div>
</form>
<input type="button" id="home_move" value="홈으로 이동">
<input type="button" id="login_move" value="로그인">

</body>
</html>