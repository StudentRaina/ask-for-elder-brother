<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

#id_view_div {
	border : 1pt solid #000000;
	width : 150px;
	height : 20px;
	display : inline-block;
	background-color: #D5D5D5;
}

#password_view_div {
	border : 1pt solid #000000;
	width : 150px;
	height : 20px;
	display : inline-block;
	background-color: #D5D5D5;
}


</style>
<script type="text/javascript" 
		src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	
	$("#id_viewForm").show();
	$("#password_viewForm").hide();	

	$("#id_view_div").on("click", function() {
		$("#id_viewForm").show();
		$("#password_viewForm").hide();	
	});//아이디 찾기 이동
	
		
	$("#password_view_div").on("click", function() {
		$("#password_viewForm").show();
		$("#id_viewForm").hide();			
	});//비밀번호 찾기 이동
	
	
	
	$("#view_divEmail").show();
	$("#view_divPhoneNumber").hide();
	 
	$("input[name='view_radio']").change(function() {
		var radioValue = $(this).val();
		
		if (radioValue == "email_radio") {
			$("#view_divEmail").show();
			$("#view_divPhoneNumber").hide();
		} else if (radioValue == "phone_radio") {
			$("#view_divPhoneNumber").show();
			$("#view_divEmail").hide();
		}
	});//아이디 찾기 - 이메일, 핸드폰 선택	
	
	
	$("#view_divEmail2").show();
	$("#view_divPhoneNumber2").hide();
	 
	$("input[name='view_radio']").change(function() {
		var radioValue = $(this).val();
		
		if (radioValue == "email_radio") {
			$("#view_divEmail2").show();
			$("#view_divPhoneNumber2").hide();
		} else if (radioValue == "phone_radio") {
			$("#view_divPhoneNumber2").show();
			$("#view_divEmail2").hide();
		}
	});//비밀번호 찾기 - 이메일, 핸드폰 선택

	
	
	
	
	
	
	
});

</script>

</head>
<body>

<div id="view_div">	
	<div id="id_view_div">
		<div id="id_view_div2">아이디 찾기</div>
	</div>
	
	<div id="password_view_div">
		<div id="password_view_div2">비밀번호 찾기</div>
	</div>
</div>

<h1>
등록한 정보로 찾기
</h1>
회원가입 시 등록한 정보로 아이디를 찾을수 있습니다.
<br/>

<div id="view_radio_div" name="view_radio_div">
	<input type="radio" name="view_radio" id="view_radio" value="email_radio" checked="checked"> 이메일 주소
	<input type="radio" name="view_radio" id="view_radio" value="phone_radio"> 휴대폰 번호
</div>

<form action="#" id="id_viewForm" method="post">	
	<div class="form-group" id="view_divName">
    	<label for="name_view" class="name_view_label">이름</label>
       	<div class="name_view_div">
        	<input type="text" class="name_input" id="name_view" name="name_view" maxlength="15">
       	</div>
   	</div>
   	
	<div class="form-group" id="view_divEmail">
    	<label for="email_view" class="email_view_label">이메일</label>
       	<div class="email_view_div">
        	<input type="email" class="email_input" id="email_view" name="email_view" maxlength="40">
       	</div>
   	</div>
	
	<div class="form-group" id="view_divPhoneNumber">
    	<label for="phone_view" class="phone_view_label">휴대폰 번호</label>
       	<div class="phone_view_div">
        	<input type="tel" class="phone_input" id="phone_view" name="phone_view" maxlength="11">
       	-를 제외하고 숫자만 입력하세요.
       	</div>
   	</div>
	
	<br/>   
	<input type="button" id="id_view" name="id_view" value="아이디 찾기"> 
</form>



<form action="#" id="password_viewForm" method="post">
	
	<div class="form-group" id="view_divId2">
    	<label for="id_view2" class="id_view_label2">아이디</label>
    	<div class="id_view_div2">
        	<input type="text" class="id_input2" id="id_view2" name="id_view2" maxlength="30">
        </div> 	
   	</div>
	
	<div class="form-group" id="view_divName2">
    	<label for="name_view2" class="name_view_label2">이름</label>
       	<div class="name_view_div2">
        	<input type="text" class="name_input2" id="name_view2" name="name_view2" maxlength="15">
       	</div>
   	</div>
   	
	<div class="form-group" id="view_divEmail2">
    	<label for="email_view2" class="email_view_label2">이메일</label>
       	<div class="email_view_div2">
        	<input type="email" class="email_input2" id="email_view2" name="email_view2" maxlength="40">
       	</div>
   	</div>
	
	<div class="form-group" id="view_divPhoneNumber2">
    	<label for="phone_view2" class="phone_view_label2">휴대폰 번호</label>
       	<div class="phone_view_div2">
        	<input type="tel" class="phone_input2" id="phone_view2" name="phone_view2" maxlength="11">
       	-를 제외하고 숫자만 입력하세요.
       	</div>
   	</div>

	<br/>   
	<input type="button" id="password_view" name="password_view" value="임시 비밀번호 받기"> 
</form>

</body>
</html>