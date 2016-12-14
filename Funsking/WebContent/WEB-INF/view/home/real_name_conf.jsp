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
	
	
	
	
	
	
	
	
	
	
	
	$("#real_name_confBtn").on("click", function() {	
		
		if($("input[name='real_name']").val() == ""){
			alert("이름을 입력해주세요.");
			$("input[name='real_name']").focus();
		}else if($("input[name='redt_num']").val() == ""){
			alert("주민등록 번호를 입력하세요.");
			$("input[name='redt_num']").focus();
		}else{
			if(isNaN($("input[name='redt_num']").val() * 1) == false){
				alert("실명인증이 확인되었습니다.");
				location.href="join_text_write";		
			}else{
				alert("주민등록 번호에 숫자를 입력해주세요.");
				$("input[name='redt_num']").focus();
			}
		}		
	});
		
	
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
 	 		<div id="menutitle">실명 확인</div>
 	 		<div id="content_top">
 	 			<div id="block2"></div>
 	 			<div id="line2"></div>
 	 		</div>
 	 		<div id="bigtitleFrame"></div>
 	 		<div id="contentFrame">
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
실명인증 확인
<form>
아래 실명인증 절차를 거친 후 회원가입을 진행해 주시길 바랍니다.<br/>
실명이 확인되지 않을 경우 서비스 가입이 제한되오니 이용에 참고하시기 바랍니다.<br/>
	<table>
		<tr>
			<td>이름</td>
			<td>
				<input type="text" name="real_name" />
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

 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		</div>
 	 		
 	 	</div>
 	 
 	 	<hr/>
 		<div id="bottomFrame">(재)서울문화재단 ⓒALL RIGHTS RESERVED.<br/>
 ※ (재)서울문화재단 서울특별시 동대문구 청계천로 517 (용두동 255-67)    ☎ 02-3290-7000<br/>
 		이 사이트는 IE, Chrome에 최적화 되어 있는 사이트입니다.</div>
 	
 </div>





</body>
</html>