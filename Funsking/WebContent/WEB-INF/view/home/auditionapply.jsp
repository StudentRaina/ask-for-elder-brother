<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	margin:0px;
	width : 100%;
	height: 100%;
}



#centerFrame{
	width : 63%;
	height : 998px;
	display : inline-block;
	margin-left : 18.7%;
}



 
#topFrame{
 

	width : 100%;
	height: 42px;
 
}
 
#logoFrame{

	width : 260px;
	height: 40px;
	display: inline-block;
	background-image: url('resources/images/LOGO.PNG');
	background-size : 260px 40px;
	
}

 #memberFrame{
/* 	border: 1pt solid #000000; */
	width : 200px;
	height : 40px;
	display: inline-block;
	margin-left : 60.5%;
	margin-top : 0.5%;
}

#joinFrame{
		/* border: 1pt solid #000000; */
	width : 90px;
	height : 40px;
	text-align : center;
	display: table-cell;
	vertical-align : middle;
	font-size : 10pt;
}

#loginFrame{
	/* 	border: 1pt solid #000000; */
	width : 85px;
	height : 40px;
	text-align : center;
	display: table-cell;
	vertical-align : middle;
	font-size : 10pt;

	
} 


 


#menuFrame{
	 /* border: 1pt solid #000000;  */
	width: 100%;
	height : 45px;
	display : inine-block;
}



#contentFrame{
	 /* border : 1pt solid #000000;  */
	width: 100%;
	height : 745px;
	 background-size : 100% 100%; 
	 margin-top :1%;
}

#titleFrame{
/* 	border : 1pt solid #000000; */
	width : 450px;
	height : 250px;
	margin-top : 6%;
	margin-left : 1%;
}

#favoriteFrame{
	/* border : 1pt solid #000000; */
	width : 550px;
	height : 200px;
	margin-top : 16%;
	margin-left : 53%;
}

#companytitleFrame{
	/* border : 1pt solid #000000; */
	width : 100%;
	height : 20px;
	margin-left:0.2%;
	margin-top : 0.5%;
	font-size : 10pt;
	color : gray;
	
}

#companyFrame{
	width : 100%;
	height : 70px;
	text-align : center;
}

#bigtextFrame{
	/* border : 1pt solid #000000; */
	width : 450px;
	height : 70%;
	font-size : 50pt;
	color : #FFFFFF;
	margin-top:3%;
	}
	
#smalltextFrame{
	width : 450px;
	height : 30%;
	font-size : 37.5pt;
	color : #FFFFFF;
}

	

#busi_intr{
	width : 83px;
	height : 60%;
	display : inline-block;
	 	background-color : #FFFFFF; 
	margin-left : 12.3%;
	/* background-image: url('resources/images/busi.png'); */
	/* background-size : 123px 100%; */
	text-align : center;
}
	
	
#notice{
	width : 83px;
	height : 60%;
	display : inline-block;
	 	background-color : #FFFFFF; 
	/* background-image: url('resources/images/notice.png');
	background-size : 123px 100%; */
	margin-top : 0.3%;
	text-align : center;
	margin-left : 1.5%;
}

#street_concert{
	width : 83px;
	height : 60%;
	display : inline-block;
	 	background-color : #FFFFFF; 
/* 	background-image: url('resources/images/streetconcert.png');
	background-size : 123px 100%; */
	text-align : center;
	margin-left : 1.5%;
}

#bsk_intr{
	width : 103px;
	height : 60%;
	display : inline-block;
	 	background-color : #FFFFFF; 
	/* background-image: url('resources/images/bskintr.png');
	background-size : 123px 100%; */
	text-align : center;
	margin-left : 1.5%;
	
}
	
#media_photo{
	width : 143px;
	height : 60%;
	display : inline-block;
	 	background-color : #FFFFFF; 
	/* background-image: url('resources/images/mediaphoto.png');
	background-size : 143px 100%; */
	text-align : center;
	margin-left : 1.5%;
}

#audition{
	width : 73px;
	height : 60%;
	display : inline-block;
	 	background-color : #FFFFFF; 
	/* background-image: url('resources/images/audition.png');
	background-size : 103px 100%; */
	text-align : center;
	margin-left : 1.5%;
}

#qna{
	width : 63px;
	height : 60%;
	display : inline-block;
 	background-color : #FFFFFF; 
	/* background-image: url('resources/images/qna.png');
	background-size : 103px 100%; */
	text-align : center;
	margin-left : 1.5%;
}

#cmu{
	width : 83px;
	height : 60%;
	display : inline-block;
	 	background-color : #FFFFFF; 
	/* background-image: url('resources/images/cmu.png');
	background-size : 123px 100%; */
	text-align : center;
	margin-left : 1.5%;
}

#hr{
	margin-top : -0.6%;
}

#h4{
   margin-top : -1%;
   margin-left : 48.7%;
   color : #FFFFFF;
}

#hr2 {
	margin-top : -0.2%;
}

#hr3 {
	margin-top : 1%;
}





#somenuFrame{
	width : 18%;
	height : 100%;
	display : inline-block;
	/* border : 1pt solid #000000; */
	
}

 #menutop {
	width :100%;
	height : 6px;
	display : inline-block;
}

#block {
	width : 28%;
	height : 6px;
	background-color : rgb(192, 57, 43);
	display : inline-block;
	float : left;
}

#line {
	width : 72%;
	height : 6px;
	border-top : 1pt solid gray;
	display : inline-block;
	float : left;
}
 
#somenu1{
	width : 100%;
	height : 40px;
	background-color : rgb(192, 57, 43);
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
/* 	padding-left : 8px;
	padding-top : 7px; */
	margin-left : 5%;
	color : #FFFFFF;
}

#somenu2{
	width : 100%;
	height : 40px;
	background-color : rgb(190, 190, 190);
	margin-top : 1%;
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
	/* background-image: url('resources/images/asdf.png'); */
	background-position : right center;
	background-repeat : no-repeat;
 	background-size : 100% 70%; 
 	margin-left : 23.8%;
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
/* 	padding-left : 8px;
	padding-top : 7px; */
	margin-left : 5%;
	color : #FFFFFF;
}


#contentsFrame{
	width: 81%;
	height : 100%;
/* 	border : 1pt solid #000000; */
	display : inline-block;
}

#menutitle{
	font-size : 13.5pt;
	font-weight : bold;
	margin-top : 2%;
}

 #content_top {
	width :100%;
	height : 7px;
	display : inline-block;
/* 	border : 1pt solid #000000; */
	margin-top : 0.5%;
}

#block2 {
	width : 20%;
	height : 6px;
	background-color : rgb(192, 57, 43); 
	display : inline-block;
	float : left;
}

#line2 {
	width : 80%;
	height : 6px;
	border-bottom : 1pt solid rgb(192, 57, 43);
	display : inline-block;
	float : left;
	margin-top : -0.1%;
}

#bottomFrame{
	text-align : center;
	font-size : 10pt;
	font-weight : bold;
}

/* #bigtitleFrame{
	width : 100%;
	height : 30pt;
	margin-top : 1%;
	font-size : 20pt;
	color : rgb(192, 57, 43);
	font-weight : bold;
} */

#imageFrame{
	width : 100%;
	height : 180px;
	background-image: url('resources/images/auditionapply2.PNG');
	background-repeat : no-repeat;
	background-size : 100% 100%;

}

#aa1{
	width: 100%;
	height : 30px;
}

#auditionapply_title{
	color : #FFFFFF;
	font-weight : bold;
	font-size : 20pt;
	margin-left : 1%;
}

#applyFrame{
	width : 50%;
	height : 98%;
	 /* border : 1pt solid #000000;  */
	margin:0 auto;
	margin-top : 1%;
}


#genreNameFrame{
	width : 25%;
	height : 70px;
	/* border : 1pt solid #000000; */
	display : inline-block;
	margin-top : -5%;
	font-size : 13pt;
	font-weight : bold;
	margin-top : 4%;
}

 #genreName{
	width : 25%;
	height : 70px;
	/* border : 1pt solid #000000; */
	text-align : center;
	display : table-cell;
	vertical-align : middle;
	font-size : 13pt;
	font-weight : bold;
	margin-top : 4%;
} 

#genreRadio{
	width : 72%;
	height: 70px;
	/* border : 1pt solid #000000; */
	display : inline-block;
}

#genreRadio1{
	width : 100%;
	height : 50%;
	/* border : 1pt solid #000000; */
}

#genreRadio2{
	width : 100%;
	height : 50%;
	/* border : 1pt solid #000000; */
}

#radioSinger{
	width : 15%;
	height : 97%;
	/* border : 1pt solid #000000; */
	display : inline-block;
	font-size : 10.5pt;
}

#radioSingAsongWriter{
	width : 31%;
	height : 97%;
	/* border : 1pt solid #000000; */
	display : inline-block;
	font-size : 10.5pt;
}

#radioBand{
	width : 31%;
	height : 97%;
	/* border : 1pt solid #000000; */
	display : inline-block;
	font-size : 10.5pt;
}

#radioDance{
	width : 15%;
	height : 97%;
	/* border : 1pt solid #000000; */
	display : inline-block;
	font-size : 10.5pt;
}

#radioPlay{
	width : 31%;
	height : 97%;
	/* border : 1pt solid #000000; */
	display : inline-block;
	font-size : 10.5pt;
}

#radioPerformance{
	width : 31%;
	height : 97%;
	/* border : 1pt solid #000000; */
	display : inline-block;
	font-size : 10.5pt;
}


#name_NameFrame{
	width : 25%;
	height : 50px;
	/* border : 1pt solid #000000;  */
	display : inline-block;
	margin-top : 3%;
}

#name_Name{
	width : 25%;
	height : 50px;
	/* border : 1pt solid #000000;  */
	text-align : center;
	display : table-cell;
	vertical-align : middle;
	font-size : 13pt;	
	font-weight : bold;
}




#name_textboxFrame{
	width : 72%;
	height: 50px;
	/* border : 1pt solid #000000;  */ 
	display : inline-block;
}

#name_textbox{
	width : 200px;
	height : 25px;
	border-radius : 3px;
	/* border : 1pt solid #000000;  */
}



#name_textbox1{
	width : 100%;
	height : 50px;
	display : table-cell;
	vertical-align : middle;
}





#id_NameFrame{
	width : 25%;
	height : 50px;
/* border : 1pt solid #000000;  */
	display : inline-block;
	margin-top : 1%;
}

#id_Name{
	width : 25%;
	height : 50px;
/* border : 1pt solid #000000;  */
	text-align : center;
	display : table-cell;
	vertical-align : middle;
	font-size : 13pt;	
	font-weight : bold;
}

#id_textboxFrame{
	width : 72%;
	height: 50px;
/* border : 1pt solid #000000;  */
	display : inline-block;
}

#id_textbox{
	width : 200px;
	height : 25px;
	border-radius : 3px;
/* border : 1pt solid #000000;  */
}



#id_textbox1{
	width : 100%;
	height : 50px;
	display : table-cell;
	vertical-align : middle;
}

#id_textbox{
	width : 200px;
	heigh : 50px;
	margin-left : 1%;
}




#team_NameFrame{
	width : 25%;
	height : 50px;
	/* border : 1pt solid #000000;  */
	display : inline-block;
	margin-top : 1%;
}

#team_Name{
	width : 25%;
	height : 50px;
	/* border : 1pt solid #000000;  */
	text-align : center;
	display : table-cell;
	vertical-align : middle;
	font-size : 13pt;	
	font-weight : bold;
}




#team_textboxFrame{
	width : 72%;
	height: 50px;
	/* border : 1pt solid #000000;  */ 
	display : inline-block;
}

#team_textbox{
	width : 200px;
	height : 25px;
	border-radius : 3px;
	/* border : 1pt solid #000000;  */
}



#team_textbox1{
	width : 100%;
	height : 50px;
	display : table-cell;
	vertical-align : middle;
}





#phone_NameFrame{
	width : 25%;
	height : 50px;
	 /* border : 1pt solid #000000;  */ 
	display : inline-block;
	margin-top : 1%;
}

#phone_Name{
	width : 25%;
	height : 50px;
/* border : 1pt solid #000000;  */
	text-align : center;
	display : table-cell;
	vertical-align : middle;
	font-size : 13pt;	
	font-weight : bold;
}




#phone_textboxFrame{
	width : 72%;
	height: 50px;
	/* border : 1pt solid #000000;  */
	display : inline-block;
}

#phone_textbox{
	width : 200px;
	height : 25px;
	border-radius : 3px;
/* border : 1pt solid #000000;  */
}

#phone_textbox1{
	width : 100%;
	height : 50px;
	display : table-cell;
	vertical-align : middle;
	font-size : 10pt;
}

#email_NameFrame{
	width : 25%;
	height : 50px;
	/* border : 1pt solid #000000;  */
	display : inline-block;
	margin-top : 1%;
}

#email_Name{
	width : 25%;
	height : 50px;
	/* border : 1pt solid #000000;  */  
	text-align : center;
	display : table-cell;
	vertical-align : middle;
	font-size : 13pt;	
	font-weight : bold;
}

#email_textboxFrame{
	width : 72%;
	height: 50px;
	/* border : 1pt solid #000000;  */
	display : inline-block;
}

#email_textbox{
	width : 200px;
	height : 25px;
	border-radius : 3px;
/* border : 1pt solid #000000;  */
}

#email_textbox1{
	width : 100%;
	height : 50px;
	display : table-cell;
	vertical-align : middle;
}

#people_NameFrame{
	width : 25%;
	height : 50px;
	 /* border : 1pt solid #000000;  */ 
	display : inline-block;
	margin-top : 1%;
}

#people_Name{
	width : 25%;
	height : 50px;
	/* border : 1pt solid #000000;  */ 
	text-align : center;
	display : table-cell;
	vertical-align : middle;
	font-size : 13pt;	
	font-weight : bold;
}

#people_textboxFrame{
	width : 72%;
	height: 50px;
	 /* border : 1pt solid #000000;  */ 
	display : inline-block;
}

#people_textbox{
	width : 200px;
	height : 25px;
	border-radius : 3px;
	/* border : 1pt solid #000000;  */
}

#people_textbox1{
	width : 100%;
	height : 50px;
	display : table-cell;
	vertical-align : middle;
}





#career_NameFrame{
	width : 25%;
	height : 120px;
	 /* border : 1pt solid #000000;  */
	display : inline-block;
	margin-top : 1%;
}

#career_Name{
	width : 25%;
	height : 120px;
	/* border : 1pt solid #000000;  */
	text-align : center;
	display : table-cell;
	vertical-align : middle;
	font-size : 13pt;	
	font-weight : bold;
}

#career_textboxFrame{
	width : 72%;
	height: 120px;
	 /* border : 1pt solid #000000;  */
	display : inline-block;
}

#career_textbox{
	width : 250px;
	height : 100px;
	border-radius : 3px;
/* border : 1pt solid #000000;  */
}

#career_textbox1{
	width : 100%;
	height : 120px;
	display : table-cell;
	vertical-align : middle;
}




#url_NameFrame{
	width : 25%;
	height : 50px;
	/* border : 1pt solid #000000;  */ 
	display : inline-block;
	margin-top : 1%;
}

#url_Name{
	width : 25%;
	height : 50px;
	/* border : 1pt solid #000000;  */  
	text-align : center;
	display : table-cell;
	vertical-align : middle;
	font-size : 13pt;	
	font-weight : bold;
}

#url_textboxFrame{
	width : 72%;
	height: 50px;
	/* border : 1pt solid #000000;  */ 
	display : inline-block;
}

#url_textbox{
	width : 230px;
	height : 25px;
	border-radius : 3px;
	/* border : 1pt solid #000000;  */
}

#url_textbox1{
	width : 100%;
	height : 50px;
	display : table-cell;
	vertical-align : middle;
}

#buttonFrame{
	margin-top :6%;
	margin-left :26%;
}

.button {
	width: 90px;
	height : 40px; 
    background-color: rgb(192, 57, 43);
    border: none;
    color: white;
/*     padding: 15px 32px; */
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    border-radius : 5px;
}


</style>



<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
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
 	<h2 id="h2_busi_intr">오디션</h2>
 	 	<hr id="hr2"/>
 	 	
 	
 	 	<div id="somenuFrame">
 	 		<div id="menutop">
 	 			<div id="block"></div>
 	 			<div id="line"></div>
 	 			
 	 				<div id="somenu1">
 	 			<div id="menu_textform1">
 	 			<div id="menu_text1">오디션 신청</div>
 	 			</div>
 	 			<div id="menu_image1"></div>	
 	 		</div>
 			
 			<div id="somenu2">
 	 		<div id="menu_textform2">
 	 			<div id="menu_text2">오디션 투표</div>
 	 			</div>
 	 			<div id="menu_image2"></div>
 	 		</div>
 	 		</div>
 	 		
 	 		
 	 	</div>
 	 	<div id="contentsFrame" style="float: right;">
 	 		<div id="imageFrame">
 	 			<div id="aa1"></div>
 	 			<div id="auditionapply_title">오디션 신청하기</div>
 	 		</div>
 	 		<div id="menutitle">오디션 신청 정보 입력</div>
 	 		<div id="content_top">
 	 			<div id="block2"></div>
 	 			<div id="line2"></div>
 	 		</div>
 	 		<div id="contentFrame">
 	 			<div id="applyFrame">
 	 				
 	 				
 	 					<div id="genreNameFrame">
 	 						<div id="genreName">지원부문</div>
 	 					</div>
 	 					
 	 						<div id="genreRadio">
 	 							<div id="genreRadio1">
 	 								<div id="radioSinger">
 	 									<input type="radio" value="가수" />가수
 	 								</div>
 	 								<div id="radioSingAsongWriter">
 	 										<input type="radio" value="가수" name="select"/>싱어송라이터
 	 								</div>
 	 								<div id="radioBand">
 	 										<input type="radio" value="가수" name="select"/>밴드
 	 								</div>
 	 							</div>
 	 							<div id="genreRadio2">
 	 								<div id="radioDance">
 	 										<input type="radio" value="가수" name="select"/>댄스
 	 								</div>
 	 								<div id="radioPlay">
 	 										<input type="radio" value="가수" name="select"/>연주음악
 	 								</div>
 	 								<div id="radioPerformance">
 	 										<input type="radio" value="가수" name="select"/>퍼포먼스
 	 								</div>
 	 							</div>
 	 						</div>
 	 					
 	 					<div id="name_NameFrame">
 	 						<div id="name_Name">신청자 이름</div>
 	 					</div>
 	 					
 	 					<div id="name_textboxFrame">
 	 						<div id="name_textbox1">
 	 						<input type="text" id="name_textbox"></input>
 	 						</div>
 	 					</div>
 	 					
 	 					<div id="id_NameFrame">
 	 						<div id="id_Name">아이디</div>
 	 					</div>
 	 					
 	 					<div id="id_textboxFrame">
 	 						<div id="id_textbox1">
 	 						<input type="text" id="id_textbox"></input>
 	 						</div>
 	 					</div>
 	 					
 	 					<div id="team_NameFrame">
 	 						<div id="team_Name">팀 명</div>
 	 					</div>
 	 					
 	 					<div id="team_textboxFrame">
 	 						<div id="team_textbox1">
 	 						<input type="text" id="team_textbox"></input>
 	 						</div>
 	 					</div>
 	 					
 	 					<div id="phone_NameFrame">
 	 						<div id="phone_Name">연락처</div>
 	 					</div>
 	 					
 	 					<div id="phone_textboxFrame">
 	 						<div id="phone_textbox1">
 	 						<input type="text" id="phone_textbox"></input><br/>
 	 						"-"는 빼고 적어주시길 바랍니다.
 	 						</div>
 	 					</div>
 	 					
 	 					<div id="email_NameFrame">
 	 						<div id="email_Name">이메일</div>
 	 					</div>
 	 					
 	 					<div id="email_textboxFrame">
 	 						<div id="email_textbox1">
 	 						<input type="text" id="email_textbox"></input>
 	 						</div>
 	 					</div>
 	 					
 	 					<div id="people_NameFrame">
 	 						<div id="people_Name">인원</div>
 	 					</div>
 	 					
 	 					<div id="people_textboxFrame">
 	 						<div id="people_textbox1">
 	 						<input type="text" id="people_textbox"></input>
 	 						</div>
 	 					</div>
 	 					
 	 					<div id="career_NameFrame">
 	 						<div id="career_Name">활동경력</div>
 	 					</div>
 	 					
 	 					<div id="career_textboxFrame">
 	 						<div id="career_textbox1">
 	 						<textarea id="career_textbox" rows="5" cols="20"></textarea>
 	 						</div>
 	 					</div>
 	 					
 	 					<div id="url_NameFrame">
 	 						<div id="url_Name">영상Url<br/>
 	 										   SNS링크</div>
 	 					</div>
 	 					
 	 					<div id="url_textboxFrame">
 	 						<div id="url_textbox1">
 	 						<input type="text" id="url_textbox"></input>
 	 						</div>
 	 					</div>
 	 					
 	 					
 	 				
					<div id="buttonFrame">
						<input type="button" class="button" value="신청하기" />
						<input type="button" class="button" value="취소" />
					</div>
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