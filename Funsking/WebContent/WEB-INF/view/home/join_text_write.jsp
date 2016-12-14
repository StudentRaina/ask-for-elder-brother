<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/funsking/funskingmenu.css" />
<style type="text/css">


#somenu1{
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
   background-color : rgb(190, 190, 190);
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

var idCheck = false;

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
	
	
	
	
	
	
	
	
	
	
	
	
	$("#joinBtn").on("click", function() {
		
		joinCheck();//회원가입 작성 여부
			
	});//회원가입
	
	
	$("#cancelBtn").on("click", function() {
		
		location.href = "join_tos";
	});
	
	
	
	$("#id").change(function() {
		idCheck = false;
	});//아이디 중복체크후 아이디 변경
	
	
	
	function joinAjax() {
		
		var params = $("#joinForm").serialize();
		
		$.ajax({
			type : "post",
			url : "insertJoin",
			dataType : "json",
			data : params,
			success : function(result) {
				if($("#password").val() == $("#password_conf").val()){
					if(result.res == "true"){
						location.href="join_compl";
					}else{
						alert("회원가입중 오류가 발생했습니다.");
					}
				}else{
					alert("비밀번호와 비밀번호 확인이 동일하지 않습니다.");
					$("#password_conf").val("");
					$("#password_conf").focus();
				}
					
			},
			error : function(result) {
				console.log(result.resultMessage);
				alert("웹 페이지에 문제가 있어 올바르게 표시되지 않았습니다.");
			}	
		});
	
	}//회원가입 저장
	

	$("#id_check").on("click", function() {
		
		var params = $("#joinForm").serialize();
		
		$.ajax({
			type : "post",
			url : "idCheckAjax",
			dataType : "json",
			data : params,
			success : function(result) {
				if(result.ch == "success"){
					alert("사용 가능한 아이디입니다.");
					idCheck = true;
				}else{
					alert("현재 아이디는 사용중이여서 다른 아이디를 입력해주세요.");
					$("#id").val("");
					$("#id").focus();
				}
			},
			error : function(result) {
				console.log(result.resultMessage);
				alert("웹 페이지에 문제가 있어 올바르게 표시되지 않았습니다.");
			}	
		});		
	});	//아이디 중복체크

	function joinCheck() {
		
		if($.trim($("#id").val()) == ""){
			alert("아이디를 입력하세요.");
			$("#id").focus();
			
		}else if($.trim($("#password").val()) == ""){
			alert("비밀번호를 입력하세요.");
			$("#password").focus();
			
		}else if($.trim($("#password_conf").val()) == ""){
			alert("비밀번호 확인을 입력하세요.");
			$("#password_conf").focus();
			
		}else if($.trim($("#name").val()) == ""){
			alert("이름을 입력하세요.");
			$("#name").focus();
			
		}else if($.trim($("#email").val()) == ""){
			alert("이메일을 입력하세요.");
			$("#email").focus();
			
		}else if($.trim($("#phone").val()) == ""){
			alert("전화번호를 입력하세요.");
			$("#phone").focus();			
		}else if(idCheck == false){
			alert("아이디 체크 확인을 해주세요.");
		}else{
			joinAjax();
		}			
	}//회원가입 작성 여부
	
	
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
 	<h2 id="h2_busi_intr">회원가입</h2>
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
 	 		<div id="menutitle">회원가입서 작성</div>
 	 		<div id="content_top">
 	 			<div id="block2"></div>
 	 			<div id="line2"></div>
 	 		</div>
 	 		<div id="bigtitleFrame"></div>
 	 		<div id="contentFrame">
 	 		
 	 		
 	 		
 	 		


<h1>회원가입</h1>

<form  action="#" id="joinForm" method="post">
	<div class="form-group" id="divId">
    	<label for="id" class="id_label">아이디</label>
        <div class="id_div">
        	<input type="text" class="id_input" id="id" name="id" maxlength="30">
        	<input type="button" class="id_check_input" id="id_check" name="id_check" value="아이디 중복체크">
        </div> 	
   	</div>
   	
   	<div class="form-group" id="divPassword">
    	<label for="password" class="password_label">비밀번호</label>
    	<div class="password_div">
   			<input type="password" class="password_input" id="password" name="password" maxlength="30">
		</div>
    </div>
            
    <div class="form-group" id="divPasswordConf">
        <label for="password_conf" class="password_conf_label">비밀번호 확인</label>
        <div class="password_conf_div">
            <input type="password" class="password_conf_input" id="password_conf" name="password_conf"  maxlength="30">
        </div>
   </div>
           
   <div class="form-group" id="divName">
       <label for="name" class="name_label">이름</label>
       <div class="name_div">
           <input type="text" class="name_input" id="name" name="name" maxlength="15">
       </div>
   </div>
             
   <div class="form-group" id="divEmail">
       <label for="email" class="email_label">이메일</label>
       <div class="email_div">
           <input type="email" class="email_input" id="email" name="email" maxlength="40">
       </div>
   </div>
            
   <div class="form-group" id="divPhoneNumber">
       <label for="phone" class="phone_label">휴대폰 번호</label>
       <div class="phone_div">
           <input type="tel" class="phone_input" id="phone" name="phone" maxlength="11">
       -를 제외하고 숫자만 입력하세요.
       </div>
   </div>
</form>
<br/>
<input type="button" id="joinBtn" value="회원가입" />
<input type="button" id="cancelBtn" value="취소" />
 	 
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		</div>
 	 		
 	 	</div>
 	 
 	 	<hr/>
 		<div id="bottomFrame">(재)서울문화재단 ⓒALL RIGHTS RESERVED.<br/>
 ※ (재)서울문화재단 서울특별시 동대문구 청계천로 517 (용두동 255-67)    ☎ 02-3290-7000<br/>
 		이 사이트는 IE, Chrome에 최적화 되어 있는 사이트입니다.</div>
 	
 </div>


	
</body>
</html>