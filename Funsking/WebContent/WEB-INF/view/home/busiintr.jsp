<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/mian/main.css" />

<script type="text/javascript"
	src="resources/script/jquery/jquery-1.11.0.js"></script>
	<script type="text/javascript" 
		src="resources/script/jquery/jquery-1.11.0.js"></script>
			<script type="text/javascript" src="resources/script/funsking/main.js"></script>
			
<style type="text/css">

img{
	width: 1000px;
	height: 700px;
}

</style>
<script type="text/javascript">
$(document).ready(function() {
	
	var contentframe="";
	contentframe = '<img src="resources/images/tkdjqthro.png"/>';
	$("#contentFrame").html(contentframe);
			$("#media_photo").on("click",function(){
				location.href="rsv";
			});
			$("#menu_text2").on("click",function(){
				location.href="";
			});
			$("#busi_intr").on("click",function(){
				location.href="busiintr";
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
	
 	<div id="menuFrame" class="mousecursor">
 		<div id="busi_intr" class="mousecursor">사업소개</div>
 		<div id="notice" class="mousecursor">공지사항</div>
 		<div id="street_concert" class="mousecursor">거리공연</div>
		<div id="bsk_intr" class="mousecursor">버스커소개</div>
		<div id="media_photo" class="mousecursor">공연 영상 및 사진</div>
		<div id="audition" class="mousecursor">오디션</div>
		<div id="qna" class="mousecursor">QnA</div>
		<div id="cmu" class="mousecursor">커뮤니티</div>
 	</div>
 	<hr id="hr"/>
 	<h2 id="h2_busi_intr">사업소개</h2>
 	 	<hr id="hr2"/>
 	 	
 	
 	 	<div id="somenuFrame">
 	 		<div id="menutop">
 	 			<div id="block"></div>
 	 			<div id="line"></div>
 	 			
 	 				<div id="somenu1">
 	 			<div id="menu_textform1">
 	 			<div id="menu_text1" class="mousecursor">사업소개</div>
 	 			</div>
 	 			<div id="menu_image1"></div>	
 	 		</div>
 			
 			<div id="somenu2">
 	 		<div id="menu_textform2">
 	 			<div id="menu_text2" class="mousecursor">개요 및 연혁</div>
 	 			</div>
 	 			<div id="menu_image2"></div>
 	 		</div>
 	 		</div>
 	 		
 	 		
 	 	</div>
 	 	<div id="contentsFrame" style="float: right;">
 	 		<div id="menutitle" >개요 및 연혁</div>
 	 		<div id="content_top">
 	 			<div id="block2"></div>
 	 			<div id="line2"></div>
 	 		</div>
 	 		<div id="bigtitleFrame">FUNSKING IN SEOUL 소개</div>
 	 		<div id="contentFrame"></div>
 	 		
 	 	</div>
 	 
 	 	<hr/>
 		<div id="bottomFrame">(재)서울문화재단 ⓒALL RIGHTS RESERVED.<br/>
 ※ (재)서울문화재단 서울특별시 동대문구 청계천로 517 (용두동 255-67)    ☎ 02-3290-7000<br/>
 		이 사이트는 IE, Chrome에 최적화 되어 있는 사이트입니다.</div>
 	
 </div>

</body>
</html>