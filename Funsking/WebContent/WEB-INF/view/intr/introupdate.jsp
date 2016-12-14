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

.c_2{
	width: 100%;
	height: 5%;
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
	height: 50%;
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
	height:5%;
}
.c_3_2, .c_3_3{
	height: 10%;
	/* background-color: #E0FFFF;  연한 하늘색*/ 
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
	background-color: #87CEFA;
	height: 100%;
}
.c_3_1_3{
	width: 60%;
	display: inline-block;
	background-color: #87CEFA;
}
#buskerimg{
	height: 200px;
}
</style>

<script type="text/javascript">
$(document).ready(function(){
	
	
	
	$("#CancelBtn").on("click", function(){
		$("#actionForm").attr("action", "buskerintro");
		$("#actionForm").submit();
	});//CancelBtn 종료 
	
	$("#SaveBtn").on("click", function(){
		
		var updateForm = $("#updateForm");

		
		updateForm.ajaxForm(uploadResultCallBack); //form자체를 실행할때 ajax로 구동하겠다. // ajax를 실행하고 이 함수를 실행하겠다.
		updateForm.submit();
	
		/* actionForm.submit(); */
			
	});//saveBtn 종료
	
});//ready 종료

function uploadResultCallBack(data, result){
	
	if(result == "success"){
		 var resData = eval("(" + removePre(data) + ")");  //eval 데이터를 용도에맞춰 변형시켜줌 자바스크립트bean형태로 만들려고 사용 // resData 는 결국 Bean이라는 뜻
			
		$("#textFile").val(resData.fileName[0]);		
		$("#textFile1").val(resData.fileName[1]);
		
		var params = $("#updateForm").serialize();
		
		
		$.ajax({
		      type : "post",
		      url : "updateajax",
		      dataType : "json",
		      data : params,
		      success : function(result) {
		    	  if(result.res > 0){
			      		$("#actionForm").attr("action", "buskerintro2");
			      		$("#actionForm").submit();
			      	} else {
			      		alert("수정 중 문제가 발생");
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
 	 		<div id="menutitle">버스커 소개 수정</div>
 	 		<div id="content_top">
 	 			<div id="block2"></div>
 	 			<div id="line2"></div>
 	 		</div>
 	 		<!-- <div id="bigtitleFrame">버스킹 공연 사진</div> --> 
 	 		<div id="contentFrame">
 	 				
				<div class="content">
					<div class="c_2">
						<div class="c_2_1">
							1
							<form action ="#" id="actionForm" method="post">
								<input type="hidden" name="page" value="${param.page}"/>
								<input type="hidden" name="seqNum" value="${param.seqNum}" />
								<input type="hidden" name="intrNum" value="${param.intrNum}" />
							</form>
						</div>
						<div class="c_2_2">			
							<input type="button"  value="확인 " id="SaveBtn"/>
							<input type="button"  value="취소" id="CancelBtn"/>	
						</div>
					</div>
					<div class="c_3" id="tb">
						<div class="c_3_1">
							<div class="c_3_1_1">팀명: ${list4.TNAME}</div>				
							<div class="c_3_1_3">
							</div>  
						</div>
						<form action ="fileUploadAjax" id="updateForm" method="post" enctype="multipart/form-data">
						<div class="c_3_2">
						<br/>
						사진및소개 
							<!-- 멀티파트는 복합적인 자료를 넘김? => 파일을 넘길때 쓴다 -->
								파일<input type="file" name="att1" />
								<input type="text" name="textFile" id="textFile" />
								<br/>
								<table border="1" style="height: 300px;">
									<c:if test="${imgCnt > 0}">
						            <!--  CON.TEST_FILE 안에 무너가있다면. -->	
								         <c:forEach var="img" items="${list5}">
							               <c:if test="${img.FILE_EXT eq 'jpg' ||
							                           		img.FILE_EXT eq 'gif' ||
							                           		img.FILE_EXT eq 'png'}">
											     <tr>				       
										         	<td colspan="3">
										               <img alt="${img.FILENAME}" id="buskerimg"
										                  src="resources/upload/${img.FILENAME}"/>
											         </td>
								     		 	 </tr>
								     		 	 <%-- <tr>
									     			<td>파일번호<input type="text" name="fileNum" value="${img.FILENUM}" /></td>
									     		 </tr> --%>
							               </c:if>
								         </c:forEach>
						     		 </c:if> 
						     		  <tr style="visibility: hidden;">
						     			<td>파일번호<input type="text" name="fileNum" value="${list5[0].FILENUM}" /></td>
						     		 </tr> 
						     		<tr style="visibility: hidden;">
						     			<td>글번호:<input type="text" name="intrNum" value="${list4.INTRNUM}" />
						     		</tr>
									<tr>
										<td>코멘트 <input type="text" name="textComm" value="${list4.COMM}"/></td>
									</tr>
									<tr>
										<td>소개 <input type="text" name="textIntr" value="${list4.INTR}"/></td>
									</tr>
									
								
								</table>
								
						</div>
						<div class="c_3_3">영상및사진<br/>
								
								파일<input type="file" name="att2" />
								   <input type="text" name="textFile1" id="textFile1" /> <br/>
								   <c:if test="${videoCnt > 0}">
									<video poster="http://placehold.it/640x360" width="640" height="360" controls="controls">
										<c:forEach var="img" items="${list5}">
								               <c:if test="${img.FILE_EXT eq 'mp4'}">
						                        	<source src="resources/upload/${img.FILENAME}" type="video/mp4" />                     		
								               </c:if>
										</c:forEach>
									</video>
							</c:if>
							<input type="hidden" name="fileNum1" value="${list5[1].FILENUM}" />
						</div>
						</form>
					</div>										
				
 	 		</div> <!-- contentFrame 종료 -->
 	 		
 	 	</div>
 	</div>	 
 	 	<hr/>
 		<div id="bottomFrame">(재)서울문화재단 ⓒALL RIGHTS RESERVED.<br/>
 ※ (재)서울문화재단 서울특별시 동대문구 청계천로 517 (용두동 255-67)    ☎ 02-3290-7000<br/>
 		이 사이트는 IE, Chrome에 최적화 되어 있는 사이트입니다.</div>
 	
 </div>

</body>
</html>