<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/intr/hoho.css" />
<script type="text/javascript"
	src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript" src="resources/script/jquery/jquery.form.js"></script>	
<style type="text/css">
.contentFrame{
	vertical-align: middle;
}
.c_1{
	width: 100%;
	height: 8%;
	/* background-color: #E6E6FA;/* 연한보라 */ 
	display: inline-block;
}
.c_1_1{
	width:70%;
	height: 100%;
	display: inline-block;
	background-color: #E6E6FA;
}
.c_1_2{
	width:20%;
	height: 100%;
	display: inline-block;
	background-color: #C1CDCD; /* 연한회색 */
}
.c_2{
	width: 100%;
	height: 70%;
	background-color: #EEE8AA;/* 연한노랑 */
	display: inline-block;
}
.c_3{
	width: 100%;
	height: 10%;
	background-color: #FFB6C1; /* 연한핑크 */
	display: inline-block;
}
.c_4{
	width: 100%;
	height: 10%;
	background-color: #C1CDCD; /* 연한회색 */
	display: inline-block;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	$("#CancelBtn").on("click", function(){
		$("#actionForm").attr("action", "buskerphoto");
		$("#actionForm").submit();
	});
	
	$("#SaveBtn").on("click", function(){
		var insertForm = $("#insertForm")
		
		insertForm.ajaxForm(uploadResultCallBack); //form자체를 실행할때 ajax로 구동하겠다. // ajax를 실행하고 이 함수를 실행하겠다.
		insertForm.submit();
			
	});
	rsvplace();	
	
}); //ready 끝

function uploadResultCallBack(data, result){
	if(result == "success"){
		 var resData = eval("(" + removePre(data) + ")");  //eval 데이터를 용도에맞춰 변형시켜줌 자바스크립트bean형태로 만들려고 사용 // resData 는 결국 Bean이라는 뜻
			
		$("#textFile").val(resData.fileName[0]);		
		/* $("#textFile1").val(resData.fileName[1]); */
		
		var params = $("#insertForm").serialize();
		
		
		$.ajax({
		      type : "post",
		      url : "insertphoto",
		      dataType : "json",
		      data : params,
		      success : function(result) {
		      	if(result.res == "true"){
		      		location.href = "buskerphoto";
		      	} else {
		      		alert("저장 중 문제가 발생");
		      	}
		      },
		      error : function(result) {
		    	 alert("ERROR!!")  // 에러가난 경우는 ajax자체에서 문제가 생김.
		      }
	      });
	} else{
		alert("저장실패");
	}
}//ajax 종료

function removePre(data) {
	if(data.indexOf("<pre>") > -1) {  // 위치찾는것  (-1 보)
		var st = data.indexOf(">"); //끝나는위치를 찾음
		var ed = data.indexOf("<", st); //시작위치를 찾음
		
		return data.substring(st + 1, ed);
	} else {
		return data;
	}
} // removePre 끝  <pre>를 없애주겠다는 기능

function rsvplace(){
	var params = $("#actionForm1").serialize();
	$.ajax({
	      type : "post",
	      url :  "rsvplaceAjax",
	      dataType : "json",
	      data : params,
	      success : function(result) {
	    	  var html = "";
	    	  for(var i = 0; i < result.place.length; i++){ 
	    		  html += "<option value='" + result.place[i].PCODE + "'>"
	    		  html +=  result.place[i].ATTR
	    		  html += "</option>"
	    	  	}
	    	  console.log(html);
	    	  $("#drop1").html(html);
	    	  
	    	   
	    	 
	         },
		  error : function(result) {
        	 alert("error!!");
      	}
	});
}; //rsvplace 종료  예약된 장소를 가져온다. 

</script>
</head>
<body>
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
 	<h2 id="h2_busi_intr">사업소개</h2>
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
 			
 			<div id="somenu2">
 	 		<div id="menu_textform2">
 	 			<div id="menu_text2">사업소개</div>
 	 			</div>
 	 			<div id="menu_image2"></div>
 	 		</div>
 	 		</div>
 	 		
 	 		
 	 	</div>
 	 	<div id="contentsFrame" style="float: right;">
 	 		<div id="menutitle">버스커 공연 사진</div>
 	 		<div id="content_top">
 	 			<div id="block2"></div>
 	 			<div id="line2"></div>
 	 		</div>
 	 		<div id="bigtitleFrame">버스킹 공연 사진</div>
 	 		<div id="contentFrame">
 	 			<div class="c_1">
 	 				<div class="c_1_1">
 	 				<form action="#" id="actionForm1">
 	 					<select id="drop1">
 	 					</select>
 	 					<select id="drop2">
 	 					</select>
 	 					<select id="drop3">
 	 					</select>
 					</form>
 	 					<form action="#" id="actionForm" method="post">
							<input type="text" name="page" value="${param.page}"/>
							<input type="text" name="searchText" value="${param.searchText}"/>
						</form>
 	 				</div>
 	 				<!-- <div class="c_1_2">
 	 				</div> -->
 	 			</div>
 	 			<div class="c_2">2
	 	 			<form action ="fileUploadAjax" id="insertForm" method="post" enctype="multipart/form-data">  <!-- 멀티파트는 복합적인 자료를 넘김? => 파일을 넘길때 쓴다 -->
 	 				<table border="1">
 	 					<tr>
 	 						<td>제 목 :<input type="text" name="textTitle"  width="100px"></td>
 	 					</tr>
 	 					<tr>
 	 						<td> 	 						
									파일<input type="file" name="att1" />
									<input type="text" name="textFile" id="textFile" />
									<!-- <input type="file" name="att2" />
					   				<input type="text" name="textFile1" id="textFile1" /> -->
									<br/>내용<br />
									<textarea rows="35px" cols="100px" name="textComm"></textarea>
 	 						</td>
 	 					</tr>	
 	 				</table>
					</form>
 	 			</div>
 	 			<div class="c_3">3
 	 			<input type="button" id="SaveBtn" value="글 쓰기" />
 	 			<input type="button" id="CancelBtn" value="취 소" />
 	 			</div>
 	 			<div class="c_4" id="pagingArea">4
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