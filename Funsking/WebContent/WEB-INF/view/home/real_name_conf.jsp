<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">


</style>
<script type="text/javascript" 
		src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript"></script>
</head>
<body>
실명인증 확인
<form>
아래 실명인증 절차를 거친 후 회원가입을 진행해 주시길 바랍니다.<br/>
실명이 확인되지 않을 경우 서비스 가입이 제한되오니 이용에 참고하시기 바랍니다.<br/>
	<table>
		<tr>
			<td>이름</td>
			<td>
				<input type="text" name="name" />
			</td>
			<td rowspan="2">
				<input type="button" value="실명확인" id="real_name_confBtn"/>
			</td>
		</tr>
		<tr>
			<td>주민번호</td>
			<td>
				<input type="password" name="redt_num" />
			</td>
		</tr>
	</table>
※타인의 주민등록번호를 부정사용하는 자는 3년 이하의 징역 또는 1천 만원 이하의 벌급이 부과될 수 있습니다.<br/>
관련법률 : 주민등록법 제37조(벌칙) (시행일 2009. 10. 2)<br/>
</form>
<input type="button" value="회원가입서 작성" id="" />
<input type="button" value="취소" id="" />
</body>
</html>