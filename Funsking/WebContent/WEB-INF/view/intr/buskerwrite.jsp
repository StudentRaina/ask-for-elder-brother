<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/intr/hoho.css" />
<script type="text/javascript"
	src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript" src="resources/script/jquery/jquery.form.js"></script>	
<script type="text/javascript" src="resources/script/funsking/main.js"></script>
<style type="text/css">
html, body {
	position: relative;
	height: 100%;
	margin: 0;
	padding: 0;
}
.top{	
	width: 100%; 
	height: 10%;
	background-color: #FF0000;	
}

.center{
	width:  100%; 
	height: 80%;
}

.content{
	width: 100%;
	height:100%;
	float: left;
}

.c_1 , .c_2{
	width: 100%;
	height: 10%;
	background-color: #FFF0FF;
	display: inline-block;
}
 .c_2_1{
	display: inline-block;	
	width: 79%;
	
} 
 .c_2_2{
 	display: inline-block;	
	width: 20%;
} 
.c_3{
	width: 100%;
	height: 80%;
	/* background-color: #0000FF; */
}
.footer{
	width: 100%;
	height: 10%;
	background-color: #FFE08C;
}
.list {
	width: 20%;
	display: inline-block;
	
}
.c_3_1 {
	height:10%;
}
.c_3_2, .c_3_3, .c_3_4{
	height: 30%;
	background-color: #E0FFFF;
}
.c_3_1_1{
	width: 20%;
	display: inline-block;
	/* background-color: #20B2AA; */
	height: 100%;
}
.c_3_1_2{
	width: 20%- 1px;
	display: inline-block;
	/* background-color: #87CEFA; */
	height: 100%;
}
.c_3_1_3{
	width: 60%;
	height: 100%;
	display: inline-block;
	/* background-color: #87CEFA; */
}
</style>

<script type="text/javascript">
$(document).ready(function(){
	auditionBusker();
	
	$("#drop1").on("change",function(){
		auditionBusker2();
	});
	
	   $("#drop2").on("change", function(){
	    /* console.log($("#drop2 option:selected").text().substring($("#drop2 option:selected").text().indexOf("(")+1, 5));  */
	    /* $("[name ='textTname']").val($("#drop2 option:selected").text()); */
		/* $("[name ='textBskNum']").val($("#drop2 option:selected").text().substring($("#drop2 option:selected").text().indexOf("(")+1, 5)*1); */
	 	$("[name ='textBskNum']").val($("#drop2 option:selected").text().substring($("#drop2 option:selected").text().indexOf("(")+1,$("#drop2 option:selected").text().indexOf(")")));
	});  
	
	$("#CancelBtn").on("click", function(){
		$("#actionForm").attr("action", "buskerintro");
		$("#actionForm").submit();
	});//CancelBtn 종료 
	
	$("#SaveBtn").on("click", function(){
		var insertForm = $("#insertForm")

		
		insertForm.ajaxForm(uploadResultCallBack); //form자체를 실행할때 ajax로 구동하겠다. // ajax를 실행하고 이 함수를 실행하겠다.
		insertForm.submit();
	
		/* actionForm.submit(); */
			
	});//saveBtn 종료
	
});//ready 종료

function uploadResultCallBack(data, result){
	if(result == "success"){
		 var resData = eval("(" + removePre(data) + ")");  //eval 데이터를 용도에맞춰 변형시켜줌 자바스크립트bean형태로 만들려고 사용 // resData 는 결국 Bean이라는 뜻
			
		$("#textFile").val(resData.fileName[0]);		
		$("#textFile1").val(resData.fileName[1]);
		
		var params = $("#insertForm").serialize();
		
		
		$.ajax({
		      type : "post",
		      url : "insertBusker",
		      dataType : "json",
		      data : params,
		      success : function(result) {
		      	if(result.res == "true"){
		      		location.href = "buskerintro";
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

function auditionBusker(){
	var params = $("#actionForm1").serialize();
	$.ajax({
	      type : "post",
	      url :  "auditionBusker",
	      dataType : "json",
	      data : params,
	      success : function(result) {
	    	  var html = "";
	    	  for(var i = 0; i < result.audi.length; i++){ 
	    		  html += "<option value='" + result.audi[i].AUDCODE + "'>"
	    		  html +=  result.audi[i].ATTR
	    		  html += "</option>"
	    	  	}
	    	  console.log(html);
	    	  $("#drop1").html(html);
	    	  
	    	   
	    	 
	         },
		  error : function(result) {
        	 alert("error!!");
      	}
	});
}; //auditionBusker 종료 회차를 통해 버스커를 가져온다. 

function auditionBusker2(){
	var params = $("#actionForm1").serialize();
	
	$.ajax({
	      type : "post",
	      url :  "auditionBusker2",
	      dataType : "json",
	      data : params,
	      success : function(result) {
	    	  var html = "";
	    		   html += "<option value='0'> &nbsp;  </option>"  
	    	  for(var i = 0; i < result.audi2.length; i++){
	    		  html += "<option value='" + result.audi2[i].AUDCODE + "'>"
	    		  html += result.audi2[i].TNAME + "(" +result.audi2[i].BSKNUM + ")"
	    		  html += "</option>"
	    	  }
	    	/* alert(html); */
	    	  $("#drop2").html(html);
	         },
		  error : function(result) {
        	 alert("error!!");
      	}
	});
}; 

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
 	<h2 id="h2_busi_intr">버스커 소개</h2>
 	 	<hr id="hr2"/>
 	 	
 	
 	 	<div id="somenuFrame">
 	 		<!-- <div id="menutop">
 	 			<div id="block"></div>
 	 			<div id="line"></div>
 	 			
 	 				<div id="somenu1">
 	 			<div id="menu_textform1">
 	 			<div id="menu_text1">공연 영상</div>
 	 			</div>
 	 			<div id="menu_image1"></div>	
 	 		</div>
 			
 			<div id="somenu2">
 	 		<div id="menu_textform2">
 	 			<div id="menu_text2">공연 사진</div>
 	 			</div>
 	 			<div id="menu_image2"></div>
 	 		</div>
 	 		</div> -->
 	 		
 	 		
 	 	</div>
 	 	<div id="contentsFrame" style="float: right;">
 	 		<div id="menutitle">버스커 소개 쓰기</div>
 	 		<div id="content_top">
 	 			<div id="block2"></div>
 	 			<div id="line2"></div>
 	 		</div>
 	 		<!-- <div id="bigtitleFrame">버스킹 소개</div> -->
 	 		<div id="contentFrame">
 	 				
				<div class="content">
					<div class="c_2">
						<div class="c_2_1">							
							<form action ="#" id="actionForm" method="post">
								<input type="hidden" name="page" value="${param.page}"/>
								<input type="hidden" name="searchText" value="${param.searchText}" />
								<input type="hidden" name="seqNum" value="${param.seqNum}" />
								<input type="hidden" name="sequence" value="${param.sequence}" />
							</form>
							<form action="#" id="actionForm1">
								회차 :<select id="drop1"  name="audCode">
									<option value=""></option>
								</select>
							
								</form>
								<form action="#" id="actionForm2">		
							 팀명:<select id="drop2" >
							 <option value="0">&nbsp;</option>
								</select>
								</form>
						</div>
						<div class="c_2_2">			
							<input type="button"  value="확인 " id="SaveBtn"/>
							<input type="button"  value="취소" id="CancelBtn"/>	
						</div>
					</div>
					<div class="c_3" id="tb">
						<form action ="fileUploadAjax" id="insertForm" method="post" enctype="multipart/form-data">
						<div class="c_3_2">
						<br/>
						사진및소개 
							<!-- 멀티파트는 복합적인 자료를 넘김? => 파일을 넘길때 쓴다 -->
								파일<input type="file" name="att1" />
								<input type="text" name="textFile" id="textFile" />
								<br/>
								<table border="1">
									 <tr>					
										 <td>버스커넘버 <input type="text" name="textBskNum"/></td> 
									</tr> 
									<tr>
										<td>코멘트 <input type="text" name="textComm"/></td>
									</tr>
									<tr>
										<td>소개 <input type="text" name="textIntr"/></td>
									</tr>
								</table>
							
						</div>
						<div class="c_3_3">영상및사진
						
								파일<input type="file" name="att2" />
								   <input type="text" name="textFile1" id="textFile1" />
						</div>
						</form>
						<div class="c_3_4">댓글</div>
					</div>
				</div>							
				
 	 		</div> <!-- contentFrame 종료 -->
 	 		
 	 	</div>
 	 
 	 	<hr/>
 		<div id="bottomFrame">(재)서울문화재단 ⓒALL RIGHTS RESERVED.<br/>
 ※ (재)서울문화재단 서울특별시 동대문구 청계천로 517 (용두동 255-67)    ☎ 02-3290-7000<br/>
 		이 사이트는 IE, Chrome에 최적화 되어 있는 사이트입니다.</div>
 	
 </div>

</body>
</html>