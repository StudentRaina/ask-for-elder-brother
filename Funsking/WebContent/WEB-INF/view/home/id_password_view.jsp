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
	
	$("#id_div").show();
	$("#password_div").hide();
	//초기화면
	
	
	$("#id_view_div").on("click", function() {
		$("#id_div").show();
	    $("#password_div").hide();   

	});//아이디 찾기 이동
	
	
	
	$("#password_view_div").on("click", function() {
		$("#password_div").show();
	    $("#id_div").hide();        
	});//비밀번호 찾기 이동
	
	
	
	$("#id_viewForm1").show();
	$("#id_viewForm2").hide();
	 
	
	$("input[name='view_radio']").change(function() {
		var radioValue = $(this).val();
		
		if (radioValue == "email_radio") {
			$("#id_viewForm1").show();
			$("#id_viewForm2").hide();
		} else if (radioValue == "phone_radio") {
			$("#id_viewForm2").show();
			$("#id_viewForm1").hide();
		}
	});//아이디 찾기 - 이메일, 핸드폰 선택	
	

	$("#password_viewForm1").show();
	$("#password_viewForm2").hide();
		
	$("input[name='view_radio']").change(function() {
		var radioValue = $(this).val();
		
		if (radioValue == "email_radio") {
			$("#password_viewForm1").show();
			$("#password_viewForm2").hide();
		} else if (radioValue == "phone_radio") {
			$("#password_viewForm2").show();
			$("#password_viewForm1").hide();
		}
	});//비밀번호 찾기 - 이메일, 핸드폰 선택

	
	
	
	$("#id_view1_button").on("click", function() {
		
		if($.trim($("#name_view1").val()) == ""){
			alert("이름을 입력해주세요.");
			$("#name_view1").focus();
		}else if($.trim($("#email_view1").val()) == ""){
			alert("이메일을 입력해주세요.");
			$("#email_view1").focus();
		}else{
			
			var params = $("#id_viewForm1").serialize();
			
			$.ajax({
				type : "post",
				url : "idViewCheckAjax1",
				dataType : "json",
				data : params,
				success : function(result) {
					if(result.res == "success"){
						location.href = "id_view_result";
					}else {
						alert("입력한 정보와 일치하는 회원정보가 없습니다.");
					}
				},
				error : function(result) {
					alert("웹 페이지에 문제가 있어 올바르게 표시되지 않았습니다.");
				}
			});//아이디 조회 idViewCheckAjax1	
		}
					
	});//id_view1_button 클릭
	
	
	$("#id_view2_button").on("click", function() {
		
		if($.trim($("#name_view2").val()) == ""){
			alert("이름을 입력해주세요.");
			$("#name_view2").focus();
		}else if($.trim($("#phone_view2").val()) == ""){
			alert("휴대폰 번호를 입력해주세요.");
			$("#phone_view2").focus();
		}else{
			
			var params = $("#id_viewForm2").serialize();
			
			$.ajax({
				type : "post",
				url : "idViewCheckAjax2",
				dataType : "json",
				data : params,
				success : function(result) {
					if(result.res == "success"){
						location.href = "id_view_result";
					}else {
						alert("입력한 정보와 일치하는 회원정보가 없습니다.");
					}
				},
				error : function(result) {
					alert("웹 페이지에 문제가 있어 올바르게 표시되지 않았습니다.");
				}
			});//아이디 조회 idViewCheckAjax2	
		}
					
	});//id_view2_button 클릭
	

	$("#password_view3_button").on("click", function() {
		
		if($.trim($("#id_view3").val()) == ""){
			alert("아이디를 입력해주세요.");
			$("#id_view3").focus();
		}else if($.trim($("#name_view3").val()) == ""){
			alert("이름을 입력해주세요.");
			$("#name_view3").focus();
		}else if($.trim($("#email_view3").val()) == ""){
			alert("이메일을 입력해주세요.");
			$("#email_view3").focus();
		}else{
			
			var params = $("#password_viewForm1").serialize();
			
			$.ajax({
				type : "post",
				url : "passwordViewCheckAjax1",
				dataType : "json",
				data : params,
				success : function(result) {
					if(result.res == "success"){
						location.href = "password_view_result";
					}else {
						alert("입력한 정보와 일치하는 회원정보가 없습니다.");
					}
				},
				error : function(result) {
					alert("웹 페이지에 문제가 있어 올바르게 표시되지 않았습니다.");
				}
			});//비밀번호 조회 passwordViewCheckAjax1	
		}
					
	});//password_view3_button 클릭
	

	$("#password_view4_button").on("click", function() {
		
		if($.trim($("#id_view4").val()) == ""){
			alert("아이디를 입력해주세요.");
			$("#id_view4").focus();
		}else if($.trim($("#name_view4").val()) == ""){
			alert("이름을 입력해주세요.");
			$("#name_view4").focus();
		}else if($.trim($("#phone_view4").val()) == ""){
			alert("휴대폰 번호를 입력해주세요.");
			$("#phone_view4").focus();
		}else{
			
			var params = $("#password_viewForm2").serialize();
			
			$.ajax({
				type : "post",
				url : "passwordViewCheckAjax2",
				dataType : "json",
				data : params,
				success : function(result) {
					if(result.res == "success"){
						location.href = "password_view_result";
					}else {
						alert("입력한 정보와 일치하는 회원정보가 없습니다.");
					}
				},
				error : function(result) {
					alert("웹 페이지에 문제가 있어 올바르게 표시되지 않았습니다.");
				}
			});//비밀번호 조회 passwordViewCheckAjax2	
		}
					
	});//password_view4_button 클릭
	
		
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
	<input type="radio" name="view_radio" id="email_radio" value="email_radio" checked="checked"> 이메일 주소
	<input type="radio" name="view_radio" id="phone_radio" value="phone_radio"> 휴대폰 번호
</div>

<div id="id_div" name="id_div">
	
	<form action="#" id="id_viewForm1" method="post">	
		<div class="form-group" id="view_divName1">
	    	<label for="name_view1" class="name_view_label1">이름</label>
	       	<div class="name_view_div1">
	        	<input type="text" class="name_input1" id="name_view1" name="name_view1" maxlength="15">
	       	</div>
	   	</div>
	   	
		<div class="form-group" id="view_divEmail1">
	    	<label for="email_view1" class="email_view_label1">이메일</label>
	       	<div class="email_view_div1">
	        	<input type="email" class="email_input1" id="email_view1" name="email_view1" maxlength="40">
	       	</div>
	   	</div>
	   	
	   	<br/>   
		<input type="button" id="id_view1_button" name="id_view_button" value="아이디 찾기">    		
	</form>	
	
	<form action="#" id="id_viewForm2" method="post">
		<div class="form-group" id="view_divName2">
	    	<label for="name_view2" class="name_view_label2">이름</label>
	       	<div class="name_view_div2">
	        	<input type="text" class="name_input2" id="name_view2" name="name_view2" maxlength="15">
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
		<input type="button" id="id_view2_button" name="id_view2_button" value="아이디 찾기">
	</form>
</div>



<div id="password_div" name="password_div">
	
	<form action="#" id="password_viewForm1" method="post">
		
		<div class="form-group" id="view_divId3">
	    	<label for="id_view3" class="id_view_label3">아이디</label>
	    	<div class="id_view_div3">
	        	<input type="text" class="id_input3" id="id_view3" name="id_view3" maxlength="30">
	        </div> 	
	   	</div>
		
		<div class="form-group" id="view_divName3">
	    	<label for="name_view3" class="name_view_label3">이름</label>
	       	<div class="name_view_div3">
	        	<input type="text" class="name_input3" id="name_view3" name="name_view3" maxlength="15">
	       	</div>
	   	</div>
	   	
		<div class="form-group" id="view_divEmail3">
	    	<label for="email_view3" class="email_view_label3">이메일</label>
	       	<div class="email_view_div3">
	        	<input type="email" class="email_input3" id="email_view3" name="email_view3" maxlength="40">
	       	</div>
	   	</div>
	
		<br/>   
		<input type="button" id="password_view3_button" name="password_view3_button" value="비밀번호 찾기"> 
		
	</form>
	
	
	<form action="#" id="password_viewForm2" method="post">
		
		<div class="form-group" id="view_divId4">
	    	<label for="id_view4" class="id_view_label4">아이디</label>
	    	<div class="id_view_div4">
	        	<input type="text" class="id_input4" id="id_view4" name="id_view4" maxlength="30">
	        </div> 	
	   	</div>
		
		<div class="form-group" id="view_divName4">
	    	<label for="name_view4" class="name_view_label4">이름</label>
	       	<div class="name_view_div4">
	        	<input type="text" class="name_input4" id="name_view4" name="name_view4" maxlength="15">
	       	</div>
	   	</div>
		
		<div class="form-group" id="view_divPhoneNumber4">
	    	<label for="phone_view4" class="phone_view_label4">휴대폰 번호</label>
	       	<div class="phone_view_div4">
	        	<input type="tel" class="phone_input4" id="phone_view4" name="phone_view4" maxlength="11">
	       	-를 제외하고 숫자만 입력하세요.
	       	</div>
	   	</div>
	
		<br/>   
		<input type="button" id="password_view4_button" name="password_view4_button" value="비밀번호 찾기"> 
	</form>

</div>

</body>
</html>