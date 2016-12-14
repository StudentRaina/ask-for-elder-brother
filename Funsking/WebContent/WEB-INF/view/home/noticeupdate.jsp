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
	/*  border:1pt solid #000000;  */
	width: 100%;
	height : 905px;
	 background-size : 100% 100%; 
	 margin-top : 1%;
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
	background-color : rgb(22, 160, 133);
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
	background-color : rgb(22, 160, 133);
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
}

 #content_top {
	width :100%;
	height : 7px;
	display : inline-block;
/* 	border : 1pt solid #000000; */
	margin-top : 0.5%;
}

#block2 {
	width : 15%;
	height : 6px;
	background-color : rgb(22, 160, 133);
	display : inline-block;
	float : left;
}

#line2 {
	width : 85%;
	height : 6px;
	border-bottom : 1pt solid rgb(22, 160, 133);
	display : inline-block;
	float : left;
	margin-top : -0.1%;
}

#bottomFrame{
	text-align : center;
	font-size : 10pt;
	font-weight : bold;
}

#bigtitleFrame{
	width : 100%;
	height : 30pt;
	margin-top : 1%;
	font-size : 20pt;
	color : rgb(155, 89, 182);
	font-weight : bold;
}

#noticeBlock{
	width : 150px;
	height : 40px;
	
	display : table-cell;
	vertical-align : middle;
		text-align : center;
	background-color : rgb(22, 160, 133);
	color : #FFFFFF;
	font-weight : bold;
}

#festivalBlock{
	width : 150px;
	height : 40px;
	
	display : table-cell;
	vertical-align : middle;
		text-align : center;
	background-color : rgb(190, 190, 190);	
	color : #FFFFFF;
	font-weight : bold;
		
}

#auditionBlock{
	width : 150px;
	height : 40px;
	
	display : table-cell;
	vertical-align : middle;
	text-align : center;
	background-color : rgb(190, 190, 190);
	color : #FFFFFF;
	font-weight : bold;
}

.bbb{
	width : 150px;
	height : 40px;
	display : inline-block;
	margin-top : 1%;
}

#table22{
	width : 100%;
	height : 40px;
	text-align : center;
	background-color : rgb(240,240,240);
}

#titletext1{
	width : 600px;
	
}

#titletextbox{
	width : 95%;
}

#table33{
	width : 100%;
}

#aaaf{
	text-align : center;
}

#textarea1133{
	width : 95%;
	height : 400px;
}

#textareatd{
	text-align : center;
}

#listBtn{
	width : 70px;
	height : 30px;
	color : #FFFFFF;
	background-color : rgb(22, 160, 133);
	border-radius : 6px;
		margin-left : 75%;
	font-weight : bold;
	font-size : 12pt;
	display : inline-block;
}

#updateBtn{
	width : 70px;
		height : 30px;
	color : #FFFFFF;
	background-color : rgb(22, 160, 133);
	border-radius : 6px;
	font-weight : bold;
	font-size : 12pt;
	display : inline-block;
}

#deleteBtn{
width : 70px;
	height : 30px;
	color : #FFFFFF;
	background-color : rgb(22, 160, 133);
	border-radius : 6px;
	font-weight : bold;
	font-size : 12pt;
	display : inline-block;
}
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript"
	src="resources/script/jquery/jquery.form.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	$("#listBtn").on("click", function(){
		$("#actionForm").attr("action", "notice");
		$("#actionForm").submit();
	}); //listBtn
	
	$("#updateBtn").on("click", function(){
		var updateForm=$("#updateForm");
		 updateForm.ajaxForm(uploadResultCallBack);
		 
		 
		 updateForm.submit();
		 //updatenotice();
	}); //updateBtn
	
	$("#deleteBtn").on("click", function(){
		 if(confirm("지울래용?")){ //삭제버튼을 누르고 바로 지우지않고 다시물어볼 수 있게끔 하는것이 confirm
			var params = $("#actionForm").serialize();
		
				$.ajax({
					type : "post",
					url : "deleteTest",
					dataType : "json",
					data : params,
					success : function(result){
						if(result.res > 0){ 
							location.href = "notice";
						} else{
							alert("삭제가 되지 않아용");
						}
					},
					error : function(result){
						alert("에러남!");
					} 
				});
		}
	}); // deleteBtn 	
}); //ready end


function uploadResultCallBack(data, result){
	 if(result == "success"){
		 var resData = eval("(" + removePre(data) + ")")
		 
		 if(resData.fileName[0] != null){
				$("#textFile").val(resData.fileName[0]);//textFile에 파일업로드한걸 넣어준거임
			}		 
		 var params = $("#updateForm").serialize();
		 console.log(params);
		 
		$.ajax({
			type : "post",
			url : "updateTest",
			dataType : "json",
			data : params,
			success : function(result){
				
				if(result.res > 0){
					location.href = "notice";
				} else {
					alert("수정 중 문제가 생겼습니다.");
				}
			},
			error : function(result){
				alert ("ERROR!");
			}
		});  
	 }else{
		 alert("수정을 실패하셨습니다.");		 
	 }
}

/* 

function updatenotice() {
	var params = $("#updateForm").serialize();
	
	console.log(params);
	$.ajax({
		type : "post",
		url : "updateTest",
		dataType : "json",
		data : params,
		success : function(result){
			if(result.res > 0){ 
				location.href = "notice";
			} else{
				alert("수정실패");
			}
		},
		error : function(result){
			alert("에러남!");
		} 
	});
}

 */





function removePre(data){
	if(data.indexOf("<pre>") > -1) { //데이터의 위치가 -1일경우 없다는 말, <pre>필요없다, 내용을 가져오겠다.
		var st = data.indexOf(">"); // st에 > 부분을 찾고
		var ed = data.indexOf("<", st); //ed 닫는거 앞의 부분을 찾겠다. 
		return data.substring(St + 1, ed); 
	} else {
		return data;
	}
}
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
 	<h2 id="h2_busi_intr">공지사항</h2>
 	 	<hr id="hr2"/>
 	 	
 	
 	 	<div id="somenuFrame">
 	 		<div id="menutop">
 	 			<div id="block"></div>
 	 			<div id="line"></div>
 	 			
 	 				<div id="somenu1">
 	 			<div id="menu_textform1">
 	 			<div id="menu_text1">사업소개</div>
 	 			</div>
 	 			<div id="menu_image1"></div>	
 	 		</div>
 			
 			
 	 		</div>
 	 		
 	 		
 	 	</div>
 	 	<div id="contentsFrame" style="float: right;">
 	 		<div id="menutitle">공지사항</div>
 	 		<div id="content_top">
 	 			<div id="block2"></div>
 	 			<div id="line2"></div>
 	 		</div>
 	 		<div class="bbb">
 	 		<div id="noticeBlock">공지사항</div>
 	 		</div>
 	 		<div class="bbb">
 	 		<div id="festivalBlock">축제 및 홍보</div>
 	 		</div>
 	 		<div class="bbb">
 	 		<div id="auditionBlock">오디션</div>
 	 		</div>
 	 		<div id="contentFrame">
 	 		
 	 <form action="#" id="actionForm"> <!-- 목록으로돌아갔을때  검색전 목록이 아닌 검색한 목록으로다시 돌아가기위함, 사용자에 포커스를두고 만듬-->
	<input type="hidden" name="page" value="${param.page}"/>
	<input type="hidden" name="searchText" value="${param.searchText}"/>
	
</form>

 
				<form action="fileUploadAjax" id="updateForm"
	  			  method="post" enctype="multipart/form-data">
	<table border="0" id="table22">
		<tr>
			<th>번호</th>
			<td>
			${con.NOTICENUM}
			</td>
	  			  
			<th style="width : 50px">제목</th>
			<td id="titletext1">
			<input type="text" value="${con.TITLE}" name="title" id="titletextbox"/>
			</td>
			<th>작성일</th>
			<td>
			${con.DATE1}"
			</td>
		</tr>
	</table>
	<table border="0" id="table33">
		<tr>
			<td>
			<c:choose>
				<c:when test="${empty con}">
				<input type="hidden" name ="textFile" id="textFile" />
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
			
			
			
			<c:if test="${imgCnt > 0}">
                     <!--  CON.TEST_FILE 안에 무너가있다면. -->   
                     <tr id="aaaf">
                       
                        <c:forEach var="img" items="${con2}">
                        <td colspan="2">
                           <c:if test="${img.FILE_EXT eq 'jpg' ||
                                             img.FILE_EXT eq 'gif' ||
                                             img.FILE_EXT eq 'png'}">
                           <img alt="${img.FILENAME}" id="buskerimg"
                              src="resources/upload/${img.FILENAME}"/>
				<input type="hidden" name ="textFile" id="textFile" value="${img.FILENAME}" />
                           </c:if>
                           <br/>
                  
                        
                        </td>
                         <input type="file" name="fileCon"/>
                        </c:forEach>
					</tr>
				</c:if>
			
			
			<br/>
			
			 
			 <input type="hidden" name="noticeNo" value="${param.noticeNo}"/> 
			</td>
		</tr>
		
		  
		
		<tr>
			<td id="textareatd">
				<text value="${con.COMM}" rows="5" cols="600" name="textCon" id="textarea1133" />
			
			</td>
		</tr>
		
	</table>
			</form>
 	 	
 	 		<input type="button" value="목록" id="listBtn"/> <!-- 상세보기에서 목록으로 돌아가기 -->
			<input type="button" value="수정" id="updateBtn"/>
			<input type="button" value="삭제" id="deleteBtn"/>
 	 		
 	 		
 	 	</div>
 	 
 	 	<hr/>
 		<div id="bottomFrame">(재)서울문화재단 ⓒALL RIGHTS RESERVED.<br/>
 ※ (재)서울문화재단 서울특별시 동대문구 청계천로 517 (용두동 255-67)    ☎ 02-3290-7000<br/>
 		이 사이트는 IE, Chrome에 최적화 되어 있는 사이트입니다.</div>
 	
 </div>
</body>
</html>