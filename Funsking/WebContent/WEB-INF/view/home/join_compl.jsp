<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/funsking/funskingmenu.css" />
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
 	 		<div id="menutitle">가입 완료</div>
 	 		<div id="content_top">
 	 			<div id="block2"></div>
 	 			<div id="line2"></div>
 	 		</div>
 	 		<div id="bigtitleFrame"></div>
 	 		<div id="contentFrame">
 	 		
 	 		
 	 		
 	 		
 	 

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
 	 
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		</div>
 	 		
 	 	</div>
 	 
 	 	<hr/>
 		<div id="bottomFrame">(재)서울문화재단 ⓒALL RIGHTS RESERVED.<br/>
 ※ (재)서울문화재단 서울특별시 동대문구 청계천로 517 (용두동 255-67)    ☎ 02-3290-7000<br/>
 		이 사이트는 IE, Chrome에 최적화 되어 있는 사이트입니다.</div>
 	
 </div>



</body>
</html>