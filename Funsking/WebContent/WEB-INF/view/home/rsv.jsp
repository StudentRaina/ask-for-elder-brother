<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		
		
	});
</script>

</head>
<body>

	<form name="inputForm" action="selectProc.jsp">
		<table>
			<select name="s_code1" onChange="javascript:gujoin();">
				<option value="">1차업직종</option>
				<option value="1">외식&식음료</option>
				<option value="2">유통판매</option>
				<option value="3">문화,여과,생활</option>
				<option value="4">서비스직</option>
				<option value="5">전문서비스직</option>
				<option value="6">사무직</option>
				<option value="7">고객상담&영업</option>
				<option value="8">생산노무건설</option>
			</select>

			<select name="s_code2">
				<option>2차업직종</option>
			</select>


			<input type="submit" value="찾기">
		</table>
	</form>
</body>
</html>