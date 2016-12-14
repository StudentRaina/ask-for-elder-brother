<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/funsking/funskingmenu.css" />
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



#somenu1{
   width : 100%;
   height : 40px;
   background-color : rgb(190, 190, 190);
   margin-top : 5%;
   display : inline-block;
   /* background-image: url('resources/images/asdf.png');
   background-position : right center;
   background-repeat : no-repeat;
   background-size : 15% 70%; */
   
}

#menu_image1{
   width: 30px;
   height : 40px;
   display : inline-block;
   background-image: url('resources/images/asdf.png');
   background-position : right center;
   background-repeat : no-repeat;
    background-size : 100% 70%; 
    margin-left : 30%;
}

#menu_text1{
   display: table-cell;
   width : 90px;
   height : 40px;
   vertical-align : middle;
}

#menu_textform1{
   display : inline-block;
   width : 90px;
   height : 40px;
/*    padding-left : 8px;
   padding-top : 7px; */
   margin-left : 5%;
   color : #FFFFFF;
}

#somenu2{
   width : 100%;
   height : 40px;
   background-color : rgb(190, 190, 190);
   margin-top : 5%;
   display : inline-block;
   /* background-image: url('resources/images/asdf.png');
   background-position : right center;
   background-repeat : no-repeat;
   background-size : 15% 70%; */
   
}

#menu_image2{
   width: 30px;
   height : 40px;
   display : inline-block;
   background-image: url('resources/images/asdf.png');
   background-position : right center;
   background-repeat : no-repeat;
    background-size : 100% 70%; 
    margin-left : 30%;
}

#menu_text2{
   display: table-cell;
   width : 90px;
   height : 40px;
   vertical-align : middle;
}

#menu_textform2{
   display : inline-block;
   width : 90px;
   height : 40px;
/*    padding-left : 8px;
   padding-top : 7px; */
   margin-left : 5%;
   color : #FFFFFF;
}


#somenu3{
   width : 100%;
   height : 40px;
   background-color : #FF007F;
   margin-top : 5%;
   display : inline-block;
   /* background-image: url('resources/images/asdf.png');
   background-position : right center;
   background-repeat : no-repeat;
   background-size : 15% 70%; */
   
}

#menu_image3{
   width: 30px;
   height : 40px;
   display : inline-block;
   background-image: url('resources/images/asdf.png');
   background-position : right center;
   background-repeat : no-repeat;
    background-size : 100% 70%; 
    margin-left : 30%;
}

#menu_text3{
   display: table-cell;
   width : 90px;
   height : 40px;
   vertical-align : middle;
}

#menu_textform3{
   display : inline-block;
   width : 90px;
   height : 40px;
/*    padding-left : 8px;
   padding-top : 7px; */
   margin-left : 5%;
   color : #FFFFFF;
}


#block {
   width : 28%;
   height : 6px;
   background-color : #FF007F;
   display : inline-block;
   float : left;
}

#block2 {
   width : 15%;
   height : 6px;
   background-color : #FF007F;
   display : inline-block;
   float : left;
}






</style>
<script type="text/javascript" 
		src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	

	$("#somenu1").on("click", function() {
		location.href="join_tos";
	});//왼쪽 회원가입 클릭시
	
	$("#somenu2").on("click", function() {
		location.href="login";
	});//왼쪽 로그인 클릭시

	$("#somenu3").on("click", function() {
		location.href="id_password_view";
	});//왼쪽 아이디/비밀번호 찾기 클릭시 이동

	$("#joinFrame").on("click", function() {
		location.href="join_tos";
	});//상단 회원가입 클릭시 이동

	$("#loginFrame").on("click", function() {
		location.href="login";
	});//상단 로그인 클릭시 이동
	
	
	
	
	
	
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



<div id="centerFrame">
	
<div id="topFrame">
 	<div id="logoFrame"></div>
 	  <div id="memberFrame">
 		<div id="joinFrame">회원가입</div>
 		<div id="loginFrame">로그인</div>
 	  </div>
 </div> 
	<hr/>
	
 	<div id="menuFrame">
 		<div id="busi_intr">사업소개</div>
 		<div id="notice">공지사항</div>
 		<div id="street_concert">거리공연</div>
		<div id="bsk_intr">버스커소개</div>
		<div id="media_photo">공연 영상 및 사진</div>
		<div id="audition">오디션</div>
		<div id="qna">QnA</div>
		<div id="cmu">커뮤니티</div>
 	</div>
 	<hr id="hr"/>
 	<h2 id="h2_busi_intr">아이디/비밀번호 찾기</h2>
 	 	<hr id="hr2"/>
 	 	
 	
 	 	<div id="somenuFrame">
 	 		<div id="menutop">
 	 			<div id="block"></div>
 	 			<div id="line"></div>
 	 			
 	 			<div id="somenu1">
 	 				<div id="menu_textform1">
 	 				<div id="menu_text1">회원가입</div>
 	 			</div>
 	 			<div id="menu_image1"></div>	
 	 			</div>
 			
 				<div id="somenu2">
 	 				<div id="menu_textform2">
 	 				<div id="menu_text2">로그인</div>
 	 			</div>
 	 			<div id="menu_image2"></div>
 	 			</div>
 	 			
 	 			<div id="somenu3">
 	 				<div id="menu_textform3">
 	 				<div id="menu_text3">회원 찾기</div>
 	 			</div>
 	 			<div id="menu_image3"></div>
 	 			</div>
 	 			
 	 		</div>
 	 		
 	 		
 	 	</div>
 	 	<div id="contentsFrame" style="float: right;">
 	 		<div id="menutitle">아이디/비밀번호 찾기</div>
 	 		<div id="content_top">
 	 			<div id="block2"></div>
 	 			<div id="line2"></div>
 	 		</div>
 	 		<div id="bigtitleFrame"></div>
 	 		<div id="contentFrame">
 	 		
 	 		
 	 		
 



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
회원가입 시 등록한 정보로 아이디/비밀번호를 찾을수 있습니다.
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











 	 		
 	 		
 	 		
 	 		
 	 		
 	 		</div>
 	 		
 	 	</div>
 	 
 	 	<hr/>
 		<div id="bottomFrame">(재)서울문화재단 ⓒALL RIGHTS RESERVED.<br/>
 ※ (재)서울문화재단 서울특별시 동대문구 청계천로 517 (용두동 255-67)    ☎ 02-3290-7000<br/>
 		이 사이트는 IE, Chrome에 최적화 되어 있는 사이트입니다.</div>
 	
 </div>







</body>
</html>