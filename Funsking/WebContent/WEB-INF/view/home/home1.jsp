<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript" src="resources/script/funsking/main.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
/* 	$("#loginFrame").on("click", function() {
		location.href = "login";
	});//로그인 페이지 이동
	
	$("#joinFrame").on("click", function() {
		location.href = "join_tos";
	});//회원가입 페이지 이동		
	
	$("#logoutFrame").on("click", function() {
		location.href = "Logout";
	});
	
	$("#login_idFrame").on("click", function() {
		location.href = "mypage_user";
	});
	
	
	$("#qna").on("click", function() {
		location.href = "faq_help_board";
	});//QnA 페이지 이동
	
 */
	
});

</script>
<style type="text/css">
body{
	margin:0px;
	border: 1pt solid #000000;
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

/*추가----------------------------------------  */
#member2Frame{
/* 	border: 1pt solid #000000; */
	width : 200px;
	height : 40px;
	display: inline-block;
	margin-left : 60.5%;
	margin-top : 0.5%;
}

#login_idFrame{
		/* border: 1pt solid #000000; */
	width : 90px;
	height : 40px;
	text-align : center;
	display: table-cell;
	vertical-align : middle;
	font-size : 10pt;
}

#logoutFrame{
		/* border: 1pt solid #000000; */
	width : 90px;
	height : 40px;
	text-align : center;
	display: table-cell;
	vertical-align : middle;
	font-size : 10pt;
} 
/*여기까지-------------------------------------------------------  */

#menuFrame{
	/* border: 1pt solid #000000; */
	width: 100%;
	height : 45px;
}



#contentFrame{
	/* border:1pt solid #000000; */
	width: 100%;
	height : 670px;
	 background-image: url('resources/images/mainimage2.jpg'); 
	 background-size : 100% 100%; 
	 margin-top : -5%;
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


#fv_1{
	width: 125px;
	height : 60px;
	display : inline-block;
	margin-left:2.3%;
	margin-top: 1%;
}

#fv_2{
	width: 125px;
	height : 60px;
	display : inline-block;
	margin-top: 1%;
}

#fv_3{
	width: 125px;
	height : 60px;
	display : inline-block;
	margin-top: 1%;
}

#fv_4{
	width: 125px;
	height : 60px;
	display : inline-block;
	margin-top: 1%;
}

#fv_notice{
	width:125px;
	height:60px;
	display: table-cell;
	background-color: rgba( 130, 130, 130, 0.5 );
	margin-left:2.3%;
	border-top:6px solid gray;
	border-left : 3px solid gray;
	text-align : center;
	vertical-align : middle;
	font-size : 14pt;
	color : #FFFFFF;
}

#fv_concert_sche{
	width:125px;
	height:60px;
	display: table-cell;
	background-color: rgba( 130, 130, 130, 0.5 );
	border-top:6px solid gray;
	border-left : 3px solid gray;
	text-align : center;
	vertical-align : middle;
	font-size : 14pt;
	color : #FFFFFF;
}

#fv_concert_rsv{
	width:125px;
	height:60px;
	display: table-cell;
	background-color: rgba( 130, 130, 130, 0.5 );
	border-top:6px solid gray;
	border-left : 3px solid gray;
	text-align : center;
	vertical-align : middle;
	font-size : 14pt;
	color : #FFFFFF;
}

#fv_concert_pla{
	width:125px;
	height:60px;
	display: table-cell;
	background-color: rgba( 130, 130, 130, 0.5 );
	border-top:6px solid gray;
	border-left : 3px solid gray;
	text-align : center;
	vertical-align : middle;
	font-size : 14pt;
	color : #FFFFFF;
}

#fv_textarea{
	width: 100%;
	height : 20px;
	/* border : solid 1pt #000000; */
	margin-top : 2.4%;
	font-size: 10pt;
	margin-left : 2%;
	color : #FFFFFF;
	
}

#fv_festival1{
	width:125px;
	height:75px;
	display: inline-block;
	background-color : #FF0000;
	margin-top: 2.1%;
	margin-left:2.3%;
	background-image: url('resources/images/festival1.PNG');
	background-size : 125px 100%;
	
}

#fv_festival2{
	width:125px;
	height:75px;
	display: inline-block;
	background-color : #FF0000;
	margin-top: 2.1%;
	background-image: url('resources/images/festival2.png');
	background-size : 125px 100%;
}

#fv_festival3{
	width:125px;
	height:75px;
	display: inline-block;
	background-color : #FF0000;
	margin-top: 2.1%;
	background-image: url('resources/images/festival3.jpg');
	background-size : 125px 100%;
}

#fv_festival4{
	width:125px;
	height:75px;
	display: inline-block;
	background-color : #FF0000;
	margin-top: 2.1%;
	background-image: url('resources/images/festival4.png');
	background-size : 125px 100%;
}



#company1{
 	width : 175px;
	height : 100%;
	display : inline-block;
 	
	background-image: url('resources/images/company1.PNG');
 	background-repeat : no-repeat;
/*  	background-size : 95% 100%;  */
 	text-align: center;
 	background-size : 100% 50%;
}


#company2{
	width : 170px;
	height : 100%;
	display : inline-block;
	/* background-color : #00FF00; */
	
		margin-left : 2.5%;
	background-image: url('resources/images/company2.gif');
	background-repeat : no-repeat;
	/*background-size : 100% 100%;*/
	margin-top : 1.5%;
	text-align : center;
	
}

#company3{
	width : 220px;
	height : 100%;
	display : inline-block;
	/* background-color : #00FF00; */
		
			margin-left : 2.5%;
	background-image: url('resources/images/company3.png');
	/* background-size : 100% 100%; */
	background-repeat : no-repeat;
	text-align : center;
}

#company4{
	width : 150px;
	height : 100%;
	display : inline-block;
	/* background-color : #00FF00;
	 */
	 	margin-left : 2.5%;
	background-image: url('resources/images/company4.gif');
	/* background-size : 100% 100%; */
	background-repeat : no-repeat;
	background-size : 100% 50%;
}

#company5{
	width : 225px;
	height : 100%;
	display : inline-block;
	/* background-color : #00FF00; */

	margin-left : 2.5%;
	background-image: url('resources/images/company5.gif');
	background-repeat : no-repeat;
	
}

#bottomFrame{
	text-align : center;
	font-size : 10pt;
}


/* .bg{
   display: inline-block;
   width: 100%;
   height: 100%;
   border: 0px;
   background-color: <img src="junhee.jpg"/>;
   opacity: 0.4; /* 투명도 */
/*    position: absolute;
   z-index: 100;
}
.popup {
 
   display: inline-block;
   width: 500px;
   height: 700px;
   background-color: #FFFFFF;
   position: absolute; /* 깊이를 나타낸다 */
/*    z-index: 200;
   top: calc(50% - 50px);
   left: calc(50% - 100px);
   text-align: center;
}
 
 
.img{
	display: inline-block;
 	witdh:100px;
 	height:400px;
 	
}
.a{
	background-color : #FFFFAA;
	
  }
 
 
.v{
	background-color : #AAEEFF;
 
  }
  
.e{
	display: inline;
	vertical-align: middle;
	background-color: <img alt="junee" src="junee.gif">;
	text-align: center;
	
}  */ 

#hr{
	margin-top : -0.6%;
}

#h4{
   margin-top : -1%;
   margin-left : 48.7%;
   color : #FFFFFF;
}

#hr2 {
	margin-top : -0.1%;
}

#hr3 {
	margin-top : 1%;
}

</style>
</head>
<body>
<div id="leftFrame"></div>

<div id="centerFrame">
	
<div id="topFrame">
 	<div id="logoFrame"></div>
 <!--천재영느님께서 만듬 ㅋㅋㅋㅋㅋㅋ 로그인 화면  -->	 
 	 <c:choose>  
     	<c:when test="${!empty sFuserNUM}">
     		<div id="member2Frame"> 		
 				<div id="login_idFrame">${sFuserID}</div>
 				<div id="logoutFrame">로그아웃</div>
 	  		</div>   	
     	</c:when>
     	
     	<c:otherwise>
     		<div id="memberFrame"> 		
 				<div id="joinFrame">회원가입</div>
 				<div id="loginFrame">로그인</div>
 	  		</div>  	
     	</c:otherwise>   
     </c:choose> 
 	
 	  <!-- <div id="memberFrame"> 		
 		<div id="joinFrame">회원가입</div>
 		<div id="loginFrame">로그인</div>
 	  </div> -->
 	  
 	  <%-- 
 	  <!--member2Frame 추가 ---------------------------------->
 	  <div id="member2Frame"> 		
 		<div id="login_idFrame">${sFuserID}</div>
 		<div id="mypageFrame">Mypage</div>
 	  </div>
 	   --%>
 </div> 

	<hr/>
 	<div id="menuFrame">
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
 	
 <div id="contentFrame">
 	<div id="titleFrame">
 		<div id="bigtextFrame"><b>FUNSKING IN SEOUL<b/></div>
 		<div id="smalltextFrame">공연에 서울을 담다</div>
 		<h4 id="h4">우리가 들려주는 작은 노랫말</h4>
 	</div>
 	
 	<div id="favoriteFrame">
 		<div id="fv_1">
 		<div id="fv_notice" class="mousecursor">공지사항</div>
 		</div>
 		<div id="fv_2">
 		<div id="fv_concert_sche" class="mousecursor">공연일정</div>
 		</div>
 		<div id="fv_3">
 		<div id="fv_concert_rsv" class="mousecursor">공연예약</div>
 		</div>
 		<div id="fv_4">
 		<div id="fv_concert_pla" class="mousecursor">공연장소</div>
 		</div>
 		<div id="fv_textarea">서울시에서 진행중인 축제</div>
 		<div id="fv_festival1"></div>
 		<div id="fv_festival2"></div>
 		<div id="fv_festival3"></div>
 		<div id="fv_festival4"></div>
 	</div>
 </div>
 <div id="companytitleFrame">응원해주시는 기업</div>
	<hr id="hr2"/>
 <div id="companyFrame"> 
 	<div id="company1"></div>
 	<div id="company2"></div>
 	<div id="company3"></div>
 	<div id="company4"></div>
 	<div id="company5"></div>
 </div>
	<hr id="hr3"/>
	<div id="bottomFrame">(재)서울문화재단 ⓒALL RIGHTS RESERVED.<br/>
 ※ (재)서울문화재단 서울특별시 동대문구 청계천로 517 (용두동 255-67)    ☎ 02-3290-7000<br/>
 		이 사이트는 IE, Chrome에 최적화 되어 있는 사이트입니다.</div>
</div>
</body>
</html>